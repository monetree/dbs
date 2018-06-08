
def usergeneratedcontent(request):
    studio_id=request.POST.get('studio_id')
    print(studio_id)

    obj=SdkUsers.objects.raw("SELECT sdk_users.id,user.id,content_ratings.id,movie_streams.id,sdk_users.email,\
            movie_streams.sdk_user_id,sdk_users.display_name,count(content_ratings.review) as no_of_comments,count(*)\
            AS no_of_uploads from sdk_users\
            INNER JOIN movie_streams ON sdk_users.id=movie_streams.sdk_user_id\
            INNER JOIN user ON user.studio_id=movie_streams.studio_id\
            INNER JOIN content_ratings ON content_ratings.user_id=user.id\
            where user.studio_id=2782 GROUP BY movie_streams.sdk_user_id,content_ratings.review")

    views=VideoLogs.objects.raw("select count(*) AS total_views,movie_streams.id,video_logs.id,user.id from video_logs\
            INNER JOIN  movie_streams on movie_streams.id=video_logs.video_id\
            INNER JOIN user ON user.studio_id=movie_streams.studio_id where user.studio_id=2782 GROUP BY video_logs.video_id")

    lst=[]
    dict={}
    for i in obj:
        dict={"email":i.email,"display_name":i.display_name,"no_of_uploads":i.no_of_uploads,"total_comments":i.no_of_comments}
        lst.append(dict)
    for j in views:
        dict={"total_views":j.total_views}
        lst.append(dict)

    return JsonResponse(lst,safe=False)




# select count(*) AS total_views,movie_streams.id,video_logs.id,user.id from video_logs INNER JOIN movie_streams on movie_streams.id=video_logs.video_id INNER JOIN user ON user.studio_id=movie_streams.studio_id where user.studio_id=2782 GROUP BY video_logs.video_id
# 2782

    # obj=SdkUsers.objects.raw("SELECT sdk_users.id,movie_streams.id,sdk_users.email,\
    #         movie_streams.sdk_user_id,sdk_users.display_name,count(*)\
    #         AS no_of_uploads from sdk_users\
    #         INNER JOIN movie_streams ON sdk_users.id=movie_streams.sdk_user_id\
    #         INNER JOIN user ON user.studio_id=movie_streams.studio_id\
    #         where user.studio_id=" +studio_id+ " GROUP BY movie_streams.sdk_user_id")

    # comments=ContentRatings.objects.raw("SELECT content_ratings.review FROM content_ratings\
    #         INNER JOIN user ON content_ratings.user_id=user.id GROUP BY content_ratings.review")



    # $params['studio_id'] = $studio_id;
    #         $params['offset'] = $offset;
    #         $params['limit'] = $page_size;
    #         $params['custom_report_detail_data'] = json_encode($customReportdetail_data);
    #         //print_r($customReportdetail_data);
    #         $url = PYTHON_URL . '/custom-report/';
    #         //print_r($params['custom_report_detail_data']);exit;
    #
    #         $ch = curl_init();
    #         $curlConfig = array(
    #             CURLOPT_URL => $url,
    #             CURLOPT_POST => true,
    #             CURLOPT_RETURNTRANSFER => true,
    #             CURLOPT_POSTFIELDS => $params
    #         );
    #         curl_setopt_array($ch, $curlConfig);
    #         $result = curl_exec($ch);
    #         curl_close($ch);

