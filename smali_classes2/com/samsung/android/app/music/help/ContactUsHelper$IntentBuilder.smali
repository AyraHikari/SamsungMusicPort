.class Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/help/ContactUsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentBuilder"
.end annotation


# instance fields
.field private final a:Landroid/content/Intent;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 95
    sget-object v0, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsUriType;->CONTACT_US:Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsUriType;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsUriType;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsUriType;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    sget-object v0, Lcom/samsung/android/app/music/help/ContactUsHelper$1;->a:[I

    invoke-virtual {p3}, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsUriType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    .line 110
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ContactUsUriType is not matched"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :pswitch_0
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "voc://view/directFeedback"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object p3, p0, Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;->a:Landroid/content/Intent;

    goto :goto_0

    .line 104
    :pswitch_1
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "voc://view/contactUs?actionType=sendFeedback"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object p3, p0, Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;->a:Landroid/content/Intent;

    goto :goto_0

    .line 101
    :pswitch_2
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "voc://view/contactUs"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object p3, p0, Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;->a:Landroid/content/Intent;

    .line 112
    :goto_0
    iget-object p3, p0, Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;->a:Landroid/content/Intent;

    const-string v0, "packageName"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object p1, p0, Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;->a:Landroid/content/Intent;

    const-string p3, "appId"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method a()Landroid/content/Intent;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;->a:Landroid/content/Intent;

    return-object v0
.end method

.method a(Ljava/lang/String;)Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;->a:Landroid/content/Intent;

    const-string v1, "appName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method a(Z)Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;->a:Landroid/content/Intent;

    const-string v1, "isBillingSupported"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method b(Ljava/lang/String;)Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;->a:Landroid/content/Intent;

    const-string v1, "preloadBody"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method c(Ljava/lang/String;)Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;->a:Landroid/content/Intent;

    const-string v1, "preloadBodyType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method d(Ljava/lang/String;)Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;->a:Landroid/content/Intent;

    const-string v1, "musePurchaseRefundFaqUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method
