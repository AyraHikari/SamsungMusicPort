.class final Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadQueueQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadQueueQueryArgs"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 813
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 814
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$DownloadQueue;->a()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadQueueQueryArgs;->uri:Landroid/net/Uri;

    .line 815
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadQueueQueryArgs;->a()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadQueueQueryArgs;->projection:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 816
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadQueueQueryArgs;->selection:Ljava/lang/String;

    .line 817
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadQueueQueryArgs;->selectionArgs:[Ljava/lang/String;

    const-string v0, "_id DESC"

    .line 818
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadQueueQueryArgs;->orderBy:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$1;)V
    .locals 0

    .line 812
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadQueueQueryArgs;-><init>()V

    return-void
.end method

.method private static a()[Ljava/lang/String;
    .locals 2

    .line 822
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_id"

    .line 824
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "title"

    .line 825
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "artist"

    .line 826
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "album"

    .line 828
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "album_id"

    .line 829
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "audio_id"

    .line 830
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "track_id"

    .line 831
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "track_type"

    .line 832
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "bitrate"

    .line 833
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "codec"

    .line 834
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "order_id"

    .line 835
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "is_downloading"

    .line 836
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "disk_number"

    .line 837
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "track_number"

    .line 838
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "download_url"

    .line 839
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "downloaded_size"

    .line 840
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "file_size"

    .line 841
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "expire_time_long"

    .line 842
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "id3v1"

    .line 843
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "id3v2"

    .line 844
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "id3v2_filesize"

    .line 845
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "drm_type"

    .line 846
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "delete_url"

    .line 848
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
