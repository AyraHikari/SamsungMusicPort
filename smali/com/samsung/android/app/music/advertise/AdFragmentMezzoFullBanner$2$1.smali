.class Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$2;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$2$1;->a:Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$2$1;->a:Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner$2;->a:Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/advertise/AdFragmentMezzoFullBanner;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01e6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
