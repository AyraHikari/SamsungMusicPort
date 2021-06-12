.class final Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$dmrButtonClickListener$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$dmrButtonClickListener$2;->invoke()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$dmrButtonClickListener$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$dmrButtonClickListener$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$dmrButtonClickListener$2$1;->a:Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$dmrButtonClickListener$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    .line 40
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 42
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->dlnaDmrVolumeDown()V

    goto :goto_0

    .line 41
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->dlnaDmrVolumeUp()V

    goto :goto_0

    .line 43
    :pswitch_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->setDlnaDmrMute()V

    .line 47
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$dmrButtonClickListener$2$1;->a:Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$dmrButtonClickListener$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$dmrButtonClickListener$2;->this$0:Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->c(Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f1302ca
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
