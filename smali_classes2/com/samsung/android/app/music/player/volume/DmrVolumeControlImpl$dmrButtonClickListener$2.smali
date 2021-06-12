.class final Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$dmrButtonClickListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/View$OnClickListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$dmrButtonClickListener$2;->this$0:Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View$OnClickListener;
    .locals 1

    .line 39
    new-instance v0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$dmrButtonClickListener$2$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$dmrButtonClickListener$2$1;-><init>(Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$dmrButtonClickListener$2;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$dmrButtonClickListener$2;->invoke()Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method
