.class Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->a(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$2;->a:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "Advert.AdVastPlayer"

    const-string v1, "onManPlayerReceive : ManVideoPlayer.MAN_PLAYER_AD_START block false"

    .line 115
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$2;->a:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;

    iget-object v0, v0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->b:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;->b(Z)V

    return-void
.end method
