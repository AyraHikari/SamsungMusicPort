.class public Lcom/samsung/android/app/music/service/radioqueue/RadioPlayListQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayListQueryArgs;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lcom/samsung/android/app/music/service/radioqueue/RadioConstants;->a:Landroid/net/Uri;

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioConstants;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayListQueryArgs;->uri:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v1, "play_list_id"

    const-string v2, "play_list_name"

    const-string v3, "play_list_description"

    const-string v4, "item_order"

    const-string v5, "fixed_play_routine"

    const-string v6, "play_position"

    const-string v7, "play_audio_id"

    .line 22
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayListQueryArgs;->projection:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayListQueryArgs;->selection:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayListQueryArgs;->selectionArgs:[Ljava/lang/String;

    const-string p1, "item_order ASC"

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayListQueryArgs;->orderBy:Ljava/lang/String;

    return-void
.end method
