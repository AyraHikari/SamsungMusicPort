.class Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;->a(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog$3;->a:Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 111
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog$3;->a:Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/dialog/ReceiveMarketingConfirmDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_marketingagreement.html"

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-static {p1, v1, v2, v0}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->a(Landroid/app/Activity;IILjava/lang/String;)V

    return-void
.end method
