.class Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->onAdVideoStarted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo$1;->a:Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "Advert.AdFragmentIncrossVideo"

    const-string v1, "onAdVideoStarted : bBlock to false"

    .line 199
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo$1;->a:Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->a(Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;Z)Z

    return-void
.end method
