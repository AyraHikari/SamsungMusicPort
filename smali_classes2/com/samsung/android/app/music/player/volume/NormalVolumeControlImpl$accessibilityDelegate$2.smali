.class final Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$accessibilityDelegate$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$accessibilityDelegate$2;->this$0:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;
    .locals 3

    .line 49
    new-instance v0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;

    .line 50
    iget-object v1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$accessibilityDelegate$2;->this$0:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->g(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$accessibilityDelegate$2;->invoke()Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;

    move-result-object v0

    return-object v0
.end method
