.class public final Lcom/samsung/android/app/music/milk/share/Share;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/app/music/milk/share/Share;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/samsung/android/app/music/milk/share/Share;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/share/Share;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/milk/share/Share;->a:Lcom/samsung/android/app/music/milk/share/Share;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/app/Activity;ILcom/samsung/android/app/music/milk/share/ShareItem;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/Share;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Share"

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shareItem> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/share/ShareItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/share/ShareItem;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/samsung/android/app/music/milk/share/Share;->a:Lcom/samsung/android/app/music/milk/share/Share;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/milk/share/Share;->b(Landroid/app/Activity;ILcom/samsung/android/app/music/milk/share/ShareItem;)V

    return-void
.end method

.method public static final a(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/share/ShareItem;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/Share;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Share"

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shareEvent> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/share/ShareItem;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/samsung/android/app/music/milk/share/Share;->a:Lcom/samsung/android/app/music/milk/share/Share;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/app/music/milk/share/Share;->b(Landroid/app/Activity;ILcom/samsung/android/app/music/milk/share/ShareItem;)V

    return-void
.end method

.method public static final a(Landroid/app/Activity;Lcom/samsung/android/app/music/model/SimpleTrack;Ljava/lang/String;)V
    .locals 7

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "track"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/Share;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 22
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/share/ShareItem;

    .line 23
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v2

    const-string v1, "track.trackId"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/SimpleTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v3

    const-string v1, "track.trackTitle"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/SimpleTrack;->getImageBigUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/SimpleTrack;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 24
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/SimpleTrack;->getArtistNames()Ljava/lang/String;

    move-result-object v5

    move-object v1, v0

    move-object v6, p2

    .line 22
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/milk/share/ShareItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Share"

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shareTrack> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/SimpleTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-object p1, Lcom/samsung/android/app/music/milk/share/Share;->a:Lcom/samsung/android/app/music/milk/share/Share;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2, v0}, Lcom/samsung/android/app/music/milk/share/Share;->b(Landroid/app/Activity;ILcom/samsung/android/app/music/milk/share/ShareItem;)V

    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;Lcom/samsung/android/app/music/model/SimpleTrack;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 20
    check-cast p2, Ljava/lang/String;

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/milk/share/Share;->a(Landroid/app/Activity;Lcom/samsung/android/app/music/model/SimpleTrack;Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "SMUSIC-Share"

    const-string v2, "isShareable> cannot access network."

    .line 52
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0b0215

    const/4 v2, 0x0

    .line 53
    invoke-static {p0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkToast;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return v0
.end method

.method private final b(Landroid/app/Activity;ILcom/samsung/android/app/music/milk/share/ShareItem;)V
    .locals 1

    .line 45
    new-instance v0, Lcom/samsung/android/app/music/milk/share/ShareDataTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/share/ShareDataTask;-><init>(Landroid/app/Activity;ILcom/samsung/android/app/music/milk/share/ShareItem;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
