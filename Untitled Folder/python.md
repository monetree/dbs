def usergeneratedcontent(request):
    studio_id=request.POST.get('studio_id')
    print(studio_id)

    obj=SdkUsers.objects.raw("select u.id,u.email,u.display_name as name,\
         count(ms.id), ms.id as video_id from sdk_users u, movie_streams\
          ms where u.id = ms.sdk_user_id and u.studio_id=2848 group by ms.id")



    # views=VideoLogs.objects.raw("select count(*) AS total_views,movie_streams.id,video_logs.id,user.id from video_logs\
    #         INNER JOIN  movie_streams on movie_streams.id=video_logs.video_id\
    #         INNER JOIN user ON user.studio_id=movie_streams.studio_id where user.studio_id=2848 GROUP BY video_logs.video_id")

    lst=[]
    dict={}
    for i in obj:
        # dict={"email":i.email,"display_name":i.display_name,"no_of_uploads":i.no_of_uploads,"total_comments":i.no_of_comments}
        dict={"email":i.email,"display_name":i.display_name}
        lst.append(dict)
        video_id=i.video_id
        print(video_id)
        obj2=VideoLogs.objects.filter(video_id=video_id).values('video_id').annotate(view_count=Count(id))
        print(list(obj2))


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

