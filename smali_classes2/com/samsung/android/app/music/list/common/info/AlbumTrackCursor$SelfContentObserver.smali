.class Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SelfContentObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelfContentObserver"
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;)V
    .locals 1

    const/4 v0, 0x0

    .line 750
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 751
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SelfContentObserver;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    .line 761
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SelfContentObserver;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 763
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->a(Z)V

    :cond_0
    return-void
.end method
