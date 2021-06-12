.class final Lcom/samsung/android/app/music/util/rx/MusicSchedulers$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 78
    invoke-static {}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MusicSchedulers"

    const-string v1, "stopUntil. start by timer."

    .line 79
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->d()V

    :cond_0
    return-void
.end method
