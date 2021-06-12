.class public Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "PpmtPopupActivity"


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

.field private k:Ljava/lang/String;

.field private l:J

.field private m:I


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

    .line 173
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const/4 v0, 0x2

    .line 174
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, p1, :cond_1

    return v1

    .line 177
    :cond_1
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 179
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 p1, p1, 0xf

    div-int/lit8 p1, p1, 0x64

    return p1

    .line 169
    :cond_2
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 171
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 p1, p1, 0xf

    div-int/lit8 p1, p1, 0x64

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->j:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .locals 7

    .line 131
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->m:I

    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->a(I)V

    .line 132
    new-instance v0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->k:Ljava/lang/String;

    iget-wide v4, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->l:J

    iget-boolean v6, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->g:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;
        }
    .end annotation

    .line 188
    sget v0, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_layout:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->b:Landroid/widget/FrameLayout;

    .line 189
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->b:Landroid/widget/FrameLayout;

    const-string v1, "color_bg"

    const v2, -0x50506

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 190
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->i:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a(I)I

    move-result v0

    .line 191
    sget v1, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_layout_margin_top:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->c:Landroid/view/View;

    .line 192
    sget v1, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_layout_margin_bottom:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->d:Landroid/view/View;

    .line 193
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->c:Landroid/view/View;

    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->d:Landroid/view/View;

    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    sget v0, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_close_btn:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const-string v1, "close_visible"

    .line 197
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x33

    .line 200
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 201
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 v1, 0x0

    .line 203
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 204
    new-instance v1, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$1;-><init>(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 214
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 217
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->e(Landroid/os/Bundle;)V

    const/4 v0, 0x4

    .line 219
    iget v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->i:I

    if-ne v0, v1, :cond_2

    .line 220
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->d(Landroid/os/Bundle;)V

    goto :goto_2

    .line 222
    :cond_2
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->i:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 230
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->c(Landroid/os/Bundle;)V

    .line 231
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->b(Landroid/os/Bundle;)V

    goto :goto_1

    .line 227
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->b(Landroid/os/Bundle;)V

    goto :goto_1

    .line 224
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->c(Landroid/os/Bundle;)V

    .line 234
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a()V

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

    .line 359
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "color_line"

    const v2, -0x19191a

    .line 360
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "color_btn_text"

    const/high16 v3, -0x22000000

    .line 361
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    .line 363
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 364
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 365
    sget v0, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_line:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 370
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    sget v0, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button2_text:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 372
    sget v4, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button2:I

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    goto :goto_0

    .line 374
    :cond_0
    sget v0, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button1_text:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 375
    sget v4, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button1:I

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 377
    :goto_0
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 379
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    new-instance p3, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$3;

    invoke-direct {p3, p0, p4}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$3;-><init>(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v4, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p3, 0x2

    const/high16 p4, 0x3f800000    # 1.0f

    const/4 v0, -0x1

    if-eq p7, p3, :cond_1

    const/4 p3, 0x4

    if-ne p7, p3, :cond_2

    .line 391
    :cond_1
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p3, v0, v0, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    :cond_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 398
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->a()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 399
    sget p3, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button1_text:I

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 400
    sget p5, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button1:I

    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout;

    goto :goto_1

    .line 402
    :cond_3
    sget p3, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button2_text:I

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 403
    sget p5, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button2:I

    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout;

    :goto_1
    const-string v4, "btn2_text"

    .line 405
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 407
    invoke-virtual {p5, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 408
    new-instance p2, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$4;

    invoke-direct {p2, p0, p6}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$4;-><init>(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p5, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    sget p2, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button_layout:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    packed-switch p7, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 p3, 0x3

    .line 428
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 429
    sget p2, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button_margin1:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 430
    sget p2, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button_margin2:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 431
    sget p2, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button_margin3:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 434
    :pswitch_1
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v0, v0, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p5, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    sget p2, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_line_for_centeralign:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 436
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 437
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :pswitch_2
    const/4 p3, 0x5

    .line 422
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 423
    sget p2, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button_margin1:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 424
    sget p2, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button_margin2:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 425
    sget p2, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button_margin3:I

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

.method static synthetic a(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a(Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V
    .locals 7

    .line 136
    new-instance v6, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->k:Ljava/lang/String;

    iget-wide v3, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->l:J

    iget-boolean v5, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->g:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-virtual {v6, p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 137
    iput-boolean p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->h:Z

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->k:Ljava/lang/String;

    return-object p0
.end method

.method private b()V
    .locals 7

    .line 142
    new-instance v6, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->k:Ljava/lang/String;

    iget-wide v3, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->l:J

    iget-boolean v5, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->g:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-virtual {v6, p0}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->b(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->h:Z

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->finish()V

    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;
        }
    .end annotation

    const-string v0, "img_main"

    .line 240
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 247
    sget v0, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_main_image:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->e:Landroid/widget/ImageView;

    .line 248
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 242
    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] fail to display. invalid bundle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;
        }
    .end annotation

    .line 148
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->i:I

    packed-switch v0, :pswitch_data_0

    .line 162
    new-instance v0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;-><init>()V

    throw v0

    .line 159
    :pswitch_0
    sget v0, Lcom/samsung/android/sdk/ppmt/R$layout;->pop_web_view:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->setContentView(I)V

    goto :goto_0

    .line 156
    :pswitch_1
    sget v0, Lcom/samsung/android/sdk/ppmt/R$layout;->pop_image_text:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->setContentView(I)V

    goto :goto_0

    .line 153
    :pswitch_2
    sget v0, Lcom/samsung/android/sdk/ppmt/R$layout;->pop_image_only:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->setContentView(I)V

    goto :goto_0

    .line 150
    :pswitch_3
    sget v0, Lcom/samsung/android/sdk/ppmt/R$layout;->pop_text_only:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->setContentView(I)V

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
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    const-string v0, "body_text"

    .line 252
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 253
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "color_body"

    const/high16 v2, -0x22000000

    .line 257
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 259
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    sget v1, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_body_message_for_rtl:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_0

    .line 262
    :cond_0
    sget v1, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_body_message:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 264
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 254
    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] fail to display. invalid bundle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method static synthetic c(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->b()V

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->b:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private d(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->b:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string v0, "web"

    .line 272
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    sget v0, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_webview:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->f:Landroid/webkit/WebView;

    .line 279
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$2;-><init>(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 325
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 326
    iget-object p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->f:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void

    .line 274
    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] fail to display. invalid bundle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private e(Landroid/os/Bundle;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    const-string v0, "bottom_visible"

    .line 330
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "btn1_text"

    .line 331
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "btn1_action"

    .line 332
    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v0, "btn2_text"

    .line 333
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "btn2_action"

    .line 334
    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    const-string v0, "btn_align"

    const/4 v1, 0x1

    .line 335
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 337
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 338
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 343
    :cond_0
    sget v0, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_bottom1:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    if-ne v13, v0, :cond_1

    .line 344
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 345
    sget v0, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_bottom2:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move v8, v13

    .line 346
    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a(Landroid/widget/LinearLayout;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;I)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    move-object v7, v0

    move-object v8, p1

    .line 347
    invoke-direct/range {v6 .. v13}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a(Landroid/widget/LinearLayout;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_1

    .line 349
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

    .line 352
    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a(Landroid/widget/LinearLayout;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_1

    .line 339
    :cond_3
    sget-object p1, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a:Ljava/lang/String;

    const-string v0, "fail to display. invalid bundle"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    new-instance p1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic e(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 445
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 446
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 447
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

    .line 452
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onBackPressed()V
    .locals 2

    .line 457
    iget-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 458
    iput-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->h:Z

    .line 459
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->k:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 460
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 462
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 467
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 468
    iget p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->i:I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a(I)I

    move-result p1

    .line 469
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->c:Landroid/view/View;

    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->d:Landroid/view/View;

    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v1, v2, p1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 88
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->requestWindowFeature(I)Z

    .line 89
    sget-object v0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_clear"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    sget-object p1, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a:Ljava/lang/String;

    const-string v0, "the activity is started to clear popup"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->finish()V

    goto/16 :goto_1

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_popup"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_is_first_display"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->g:Z

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->h:Z

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "extra_ttlto"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->l:J

    if-eqz v0, :cond_4

    const-string p1, "template_type"

    .line 105
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->i:I

    const-string p1, "mid"

    .line 106
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->j:Ljava/lang/String;

    const-string p1, "targetid"

    .line 107
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->k:Ljava/lang/String;

    const-string p1, "displayid"

    const/4 v1, -0x1

    .line 108
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->m:I

    .line 110
    iget-object p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->j:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-wide v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->l:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_3

    iget p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->m:I

    if-gtz p1, :cond_2

    goto :goto_0

    .line 117
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->c()V

    .line 118
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 124
    :catch_0
    sget-object p1, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v0, "img_decode_fail"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a(Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :catch_1
    sget-object p1, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a(Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_1

    .line 120
    :catch_2
    sget-object p1, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->UNSUPPORTED_CARD_TYPE:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a(Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_1

    .line 111
    :cond_3
    :goto_0
    sget-object p1, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a:Ljava/lang/String;

    const-string v0, "fail to display popup. invalid params"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object p1, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a(Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    return-void

    .line 92
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 475
    sget-object v0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 476
    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->e:Landroid/widget/ImageView;

    .line 477
    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->f:Landroid/webkit/WebView;

    .line 478
    iget-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->h:Z

    if-eqz v0, :cond_0

    .line 479
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/ppmt/PpmtReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.samsung.android.sdk.ppmt.RECEIVER_EVENTS"

    .line 480
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_action"

    const-string v2, "handle_display_result"

    .line 481
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "display_result"

    const-string v2, "gone_no_reaction"

    .line 482
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mid"

    .line 483
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "targetid"

    .line 484
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 487
    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->m:I

    invoke-static {}, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    .line 488
    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->a(I)V

    .line 490
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    const-string v0, "extra_clear"

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    sget-object p1, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->a:Ljava/lang/String;

    const-string v0, "the activity is started to clear popup"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->finish()V

    :cond_0
    return-void
.end method
