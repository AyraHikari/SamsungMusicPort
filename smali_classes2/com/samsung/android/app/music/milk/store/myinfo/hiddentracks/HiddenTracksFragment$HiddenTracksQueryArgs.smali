.class public Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTracksQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HiddenTracksQueryArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTracksQueryArgs$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTracksQueryArgs$Builder;)V
    .locals 1

    .line 181
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 183
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTracksQueryArgs;->a()V

    .line 184
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTracksQueryArgs$Builder;->a(Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTracksQueryArgs$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTracksQueryArgs$Builder;->a(Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTracksQueryArgs$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTracksQueryArgs;->selection:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTracksQueryArgs$Builder;Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$1;)V
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTracksQueryArgs;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTracksQueryArgs$Builder;)V

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTracksQueryArgs;->selection:Ljava/lang/String;

    .line 191
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTracksQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 192
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTracksQueryArgs;->b()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTracksQueryArgs;->projection:[Ljava/lang/String;

    .line 194
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTracksQueryArgs;->orderBy:Ljava/lang/String;

    .line 195
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$HiddenTrack;->a()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTracksQueryArgs;->uri:Landroid/net/Uri;

    return-void
.end method

.method private static b()[Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_id"

    .line 201
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "audio_id"

    .line 202
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "track_id"

    .line 203
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "title"

    .line 204
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "album_id"

    .line 205
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "artist"

    .line 206
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "cp_attrs"

    .line 207
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
