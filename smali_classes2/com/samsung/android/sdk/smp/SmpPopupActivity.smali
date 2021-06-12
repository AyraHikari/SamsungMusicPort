.class public Lcom/samsung/android/sdk/smp/SmpPopupActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "SmpPopupActivity"


# instance fields
.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/webkit/WebView;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Ljava/lang/String;

.field private k:J

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    .line 201
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const/4 v0, 0x2

    .line 202
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, p1, :cond_1

    return v1

    .line 205
    :cond_1
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 208
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 p1, p1, 0xf

    div-int/lit8 p1, p1, 0x64

    return p1

    .line 197
    :cond_2
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 199
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 p1, p1, 0xf

    div-int/lit8 p1, p1, 0x64

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/sdk/smp/SmpPopupActivity;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->j:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .locals 8

    .line 129
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->g:Z

    if-eqz v0, :cond_0

    .line 130
    iget v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->l:I

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/display/PopupDisplayManager;->a(I)V

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/smp/SmpReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.samsung.android.sdk.smp.HANDLE_DISPLAY_RESULT"

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "display_result"

    const-string v2, "success"

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mid"

    .line 134
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ttlto"

    .line 135
    iget-wide v2, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->k:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "is_first_display"

    .line 136
    iget-boolean v2, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->g:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_popup"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "link_uris"

    .line 144
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v7, v0

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "display"

    const-string v3, "popup"

    iget-object v4, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->j:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->g:Z

    const/4 v6, 0x0

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/sdk/smp/common/BroadcastUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$ImageDecodingException;
        }
    .end annotation

    .line 217
    sget v0, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_layout:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->b:Landroid/widget/FrameLayout;

    .line 218
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->b:Landroid/widget/FrameLayout;

    const-string v1, "color_bg"

    const v2, -0x50506

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 219
    iget v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->i:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a(I)I

    move-result v0

    .line 220
    sget v1, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_layout_margin_top:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->c:Landroid/view/View;

    .line 221
    sget v1, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_layout_margin_bottom:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->d:Landroid/view/View;

    .line 222
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->c:Landroid/view/View;

    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->d:Landroid/view/View;

    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    sget v0, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_close_btn:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const-string v1, "close_visible"

    .line 226
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x33

    .line 229
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 230
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 v1, 0x0

    .line 232
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 233
    new-instance v1, Lcom/samsung/android/sdk/smp/SmpPopupActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity$1;-><init>(Lcom/samsung/android/sdk/smp/SmpPopupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 243
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 246
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->e(Landroid/os/Bundle;)V

    const/4 v0, 0x4

    .line 248
    iget v1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->i:I

    if-ne v0, v1, :cond_2

    .line 249
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->d(Landroid/os/Bundle;)V

    goto :goto_2

    .line 251
    :cond_2
    iget v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->i:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 259
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->c(Landroid/os/Bundle;)V

    .line 260
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->b(Landroid/os/Bundle;)V

    goto :goto_1

    .line 256
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->b(Landroid/os/Bundle;)V

    goto :goto_1

    .line 253
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->c(Landroid/os/Bundle;)V

    .line 263
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/widget/LinearLayout;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "color_bottom"

    const v1, -0xa0a0b

    .line 388
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "color_line"

    const v2, -0x19191a

    .line 389
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "color_btn_text"

    const/high16 v3, -0x22000000

    .line 390
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    .line 392
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 393
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 394
    sget v0, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_line:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 399
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    sget v0, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button2_text:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 401
    sget v4, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button2:I

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    goto :goto_0

    .line 403
    :cond_0
    sget v0, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button1_text:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 404
    sget v4, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button1:I

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 406
    :goto_0
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 408
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 409
    new-instance p3, Lcom/samsung/android/sdk/smp/SmpPopupActivity$3;

    invoke-direct {p3, p0, p4}, Lcom/samsung/android/sdk/smp/SmpPopupActivity$3;-><init>(Lcom/samsung/android/sdk/smp/SmpPopupActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v4, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p3, 0x2

    const/high16 p4, 0x3f800000    # 1.0f

    const/4 v0, -0x1

    if-eq p7, p3, :cond_1

    const/4 p3, 0x4

    if-ne p7, p3, :cond_2

    .line 420
    :cond_1
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p3, v0, v0, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    :cond_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 427
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->a()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 428
    sget p3, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button1_text:I

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 429
    sget p5, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button1:I

    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout;

    goto :goto_1

    .line 431
    :cond_3
    sget p3, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button2_text:I

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 432
    sget p5, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button2:I

    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout;

    :goto_1
    const-string v4, "btn2_text"

    .line 434
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 436
    invoke-virtual {p5, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 437
    new-instance p2, Lcom/samsung/android/sdk/smp/SmpPopupActivity$4;

    invoke-direct {p2, p0, p6}, Lcom/samsung/android/sdk/smp/SmpPopupActivity$4;-><init>(Lcom/samsung/android/sdk/smp/SmpPopupActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p5, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    sget p2, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button_layout:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    packed-switch p7, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 p3, 0x3

    .line 457
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 458
    sget p2, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button_margin1:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 459
    sget p2, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button_margin2:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 460
    sget p2, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button_margin3:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 463
    :pswitch_1
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v0, v0, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p5, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    sget p2, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_line_for_centeralign:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 465
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 466
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :pswitch_2
    const/4 p3, 0x5

    .line 451
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 452
    sget p2, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button_margin1:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 453
    sget p2, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button_margin2:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 454
    sget p2, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_button_margin3:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/samsung/android/sdk/smp/SmpPopupActivity;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a(Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V
    .locals 3

    .line 151
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->g:Z

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/smp/SmpReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.samsung.android.sdk.smp.HANDLE_DISPLAY_RESULT"

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "display_result"

    const-string v2, "fail"

    .line 154
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mid"

    .line 155
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "feedback_event"

    .line 156
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->value()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "feedback_detail"

    .line 157
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x0

    .line 160
    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->h:Z

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/smp/SmpPopupActivity;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->h:Z

    return p1
.end method

.method private b()V
    .locals 3

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/smp/SmpReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.samsung.android.sdk.smp.HANDLE_DISPLAY_RESULT"

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "display_result"

    const-string v2, "fail_but_retry"

    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mid"

    .line 168
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "is_first_display"

    .line 169
    iget-boolean v2, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->g:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->h:Z

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->finish()V

    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$ImageDecodingException;
        }
    .end annotation

    const-string v0, "img_main"

    .line 269
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 270
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 276
    sget v0, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_main_image:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->e:Landroid/widget/ImageView;

    .line 277
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 271
    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->j:Ljava/lang/String;

    const-string v1, "fail to display. main image not found"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method static synthetic b(Lcom/samsung/android/sdk/smp/SmpPopupActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->b()V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/sdk/smp/SmpPopupActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->b:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$NotSupportedTypeException;
        }
    .end annotation

    .line 176
    iget v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->i:I

    packed-switch v0, :pswitch_data_0

    .line 190
    new-instance v0, Lcom/samsung/android/sdk/smp/exception/InternalException$NotSupportedTypeException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/exception/InternalException$NotSupportedTypeException;-><init>()V

    throw v0

    .line 187
    :pswitch_0
    sget v0, Lcom/samsung/android/sdk/smp/R$layout;->pop_web_view:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->setContentView(I)V

    goto :goto_0

    .line 184
    :pswitch_1
    sget v0, Lcom/samsung/android/sdk/smp/R$layout;->pop_image_text:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->setContentView(I)V

    goto :goto_0

    .line 181
    :pswitch_2
    sget v0, Lcom/samsung/android/sdk/smp/R$layout;->pop_image_only:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->setContentView(I)V

    goto :goto_0

    .line 178
    :pswitch_3
    sget v0, Lcom/samsung/android/sdk/smp/R$layout;->pop_text_only:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->setContentView(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;
        }
    .end annotation

    const-string v0, "body_text"

    .line 281
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 282
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "color_body"

    const/high16 v2, -0x22000000

    .line 286
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 288
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    sget v1, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_body_message_for_rtl:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_0

    .line 291
    :cond_0
    sget v1, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_body_message:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 293
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 283
    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->j:Ljava/lang/String;

    const-string v1, "fail to display. body text not found"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private d(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 299
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->b:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string v0, "web"

    .line 301
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    sget v0, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_webview:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->f:Landroid/webkit/WebView;

    .line 308
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/android/sdk/smp/SmpPopupActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity$2;-><init>(Lcom/samsung/android/sdk/smp/SmpPopupActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 354
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 355
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->f:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void

    .line 303
    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->j:Ljava/lang/String;

    const-string v1, "fail to display. url not found"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method static synthetic d(Lcom/samsung/android/sdk/smp/SmpPopupActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a()V

    return-void
.end method

.method private e(Landroid/os/Bundle;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;
        }
    .end annotation

    const-string v0, "bottom_visible"

    .line 359
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "btn1_text"

    .line 360
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "btn1_link"

    .line 361
    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v0, "btn2_text"

    .line 362
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "btn2_link"

    .line 363
    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    const-string v0, "btn_align"

    const/4 v1, 0x1

    .line 364
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 366
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 367
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 372
    :cond_0
    sget v0, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_bottom1:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    if-ne v13, v0, :cond_1

    .line 373
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    sget v0, Lcom/samsung/android/sdk/smp/R$id;->ppmt_pop_bottom2:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move v8, v13

    .line 375
    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a(Landroid/widget/LinearLayout;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;I)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    move-object v7, v0

    move-object v8, p1

    .line 376
    invoke-direct/range {v6 .. v13}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a(Landroid/widget/LinearLayout;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_1

    .line 378
    :cond_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    const/4 v8, 0x2

    goto :goto_0

    :cond_2
    move v8, v13

    :goto_0
    move-object v1, p0

    move-object v3, p1

    move-object v6, v9

    move-object v7, v10

    .line 381
    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a(Landroid/widget/LinearLayout;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_1

    .line 368
    :cond_3
    sget-object p1, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a:Ljava/lang/String;

    const-string v0, "fail to display. invalid links"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 474
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 475
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 476
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 481
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onBackPressed()V
    .locals 2

    .line 486
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 487
    iput-boolean v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->h:Z

    .line 488
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->j:Ljava/lang/String;

    const-string v1, "popup"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/smp/display/PopupDisplayManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 489
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 491
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 496
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 497
    iget p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->i:I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a(I)I

    move-result p1

    .line 498
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->c:Landroid/view/View;

    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->d:Landroid/view/View;

    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v1, v2, p1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 87
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->requestWindowFeature(I)Z

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Landroid/content/Context;)V

    .line 89
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_clear"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    sget-object p1, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a:Ljava/lang/String;

    const-string v0, "the activity is started to clear popup"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->finish()V

    goto/16 :goto_1

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_popup"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_is_first_display"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->g:Z

    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->h:Z

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "extra_ttlto"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->k:J

    if-eqz v0, :cond_4

    const-string p1, "template_type"

    .line 105
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->i:I

    const-string p1, "mid"

    .line 106
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->j:Ljava/lang/String;

    const-string p1, "displayid"

    const/4 v1, -0x1

    .line 107
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->l:I

    .line 109
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->j:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-wide v2, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->k:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_3

    iget p1, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->l:I

    if-gtz p1, :cond_2

    goto :goto_0

    .line 116
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->c()V

    .line 117
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$ImageDecodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 121
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$ImageDecodingException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object p1, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const-string v0, "img_decode_fail"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a(Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_1

    .line 119
    :catch_1
    sget-object p1, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a(Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_1

    .line 110
    :cond_3
    :goto_0
    sget-object p1, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a:Ljava/lang/String;

    const-string v0, "fail to display popup. invalid params"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget-object p1, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a(Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    return-void

    .line 92
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 504
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 505
    iput-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->e:Landroid/widget/ImageView;

    .line 506
    iput-object v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->f:Landroid/webkit/WebView;

    .line 507
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->h:Z

    if-eqz v0, :cond_0

    .line 508
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/smp/SmpReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.samsung.android.sdk.smp.HANDLE_DISPLAY_RESULT"

    .line 509
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "display_result"

    const-string v2, "no_action"

    .line 510
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mid"

    .line 511
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 514
    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->l:I

    invoke-static {}, Lcom/samsung/android/sdk/smp/display/PopupDisplayManager;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    .line 515
    invoke-static {v0}, Lcom/samsung/android/sdk/smp/display/PopupDisplayManager;->a(I)V

    .line 517
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    const-string v0, "extra_clear"

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    sget-object p1, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->a:Ljava/lang/String;

    const-string v0, "the activity is started to clear popup"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpPopupActivity;->finish()V

    :cond_0
    return-void
.end method
