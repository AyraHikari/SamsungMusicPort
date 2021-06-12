.class final Lcom/samsung/android/app/music/player/SlidePlayer$miniQueueClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/SlidePlayer;-><init>(Landroid/support/v7/app/AppCompatActivity;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/SlidePlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/SlidePlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer$miniQueueClickListener$1;->a:Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 150
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer$miniQueueClickListener$1;->a:Lcom/samsung/android/app/music/player/SlidePlayer;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/player/SlidePlayer;->a(ZI)V

    .line 151
    sget-object p1, Lcom/samsung/android/app/music/player/SlidePlayer;->b:Lcom/samsung/android/app/music/player/SlidePlayer$Companion;

    .line 698
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "SMUSIC-SlidePlayer"

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clicked queue button on mini player! player enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/SlidePlayer$miniQueueClickListener$1;->a:Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/SlidePlayer;->g(Lcom/samsung/android/app/music/player/SlidePlayer;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
