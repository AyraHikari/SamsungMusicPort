.class final Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/event/EventPopupDialog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/event/EventPopupDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onClickListener$1;->a:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 44
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onClickListener$1;->a:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->a(Lcom/samsung/android/app/music/milk/event/EventPopupDialog;)Lcom/samsung/android/app/music/model/milkevent/EventPopup;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/main/EventManagerTaskKt;->a(Lcom/samsung/android/app/music/model/milkevent/EventPopup;)Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 46
    sget-object v0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$WhenMappings;->a:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 52
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onClickListener$1;->a:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 54
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onClickListener$1;->a:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->a(Lcom/samsung/android/app/music/milk/event/EventPopupDialog;)Lcom/samsung/android/app/music/model/milkevent/EventPopup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->getPopupLinkUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "android.intent.category.BROWSABLE"

    .line 55
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 56
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a(Landroid/support/v4/app/FragmentActivity;Landroid/content/Intent;)Z

    .line 58
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onClickListener$1;->a:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->dismiss()V

    goto :goto_0

    .line 48
    :pswitch_1
    sget-object v0, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->a:Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onClickListener$1;->a:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onClickListener$1;->a:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->a(Lcom/samsung/android/app/music/milk/event/EventPopupDialog;)Lcom/samsung/android/app/music/model/milkevent/EventPopup;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->getPopupLinkUrl()Ljava/lang/String;

    move-result-object v2

    const-string p1, "popup.popupLinkUrl"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;->a(Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;Landroid/app/Activity;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 49
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onClickListener$1;->a:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->dismiss()V

    .line 63
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/event/EventPopupDialog$onClickListener$1;->a:Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    const-string v0, "click_event_popup"

    const-string v1, "click_event_popup"

    const/4 v2, 0x1

    .line 64
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
