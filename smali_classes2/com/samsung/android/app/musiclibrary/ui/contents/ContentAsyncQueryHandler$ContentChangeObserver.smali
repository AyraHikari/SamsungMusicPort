.class public Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentChangeObserver"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 113
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    const-string v0, "MusicContentObserver"

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "onChange selfChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " Uri "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;->a:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;->a:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
