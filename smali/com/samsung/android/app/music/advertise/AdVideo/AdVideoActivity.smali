.class public Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Lcom/samsung/android/app/music/advertise/KeyBackPressedListener;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private final j:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

.field private k:Landroid/content/Context;

.field private l:Landroid/widget/FrameLayout;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->a:I

    const/4 v0, 0x2

    .line 42
    iput v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->b:I

    const/4 v0, 0x3

    .line 44
    iput v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->c:I

    const/4 v0, 0x4

    .line 46
    iput v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->d:I

    .line 58
    new-instance v0, Lcom/samsung/android/app/music/RadioPlayerController;

    invoke-direct {v0}, Lcom/samsung/android/app/music/RadioPlayerController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->j:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    return-void
.end method

.method private a(I)V
    .locals 9

    const-string v0, "Advert.AdVideoActivity"

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLayout - type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 219
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 220
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const-wide/high16 v2, 0x3fe2000000000000L    # 0.5625

    const/high16 v0, 0x3f100000    # 0.5625f

    const-wide v4, 0x3fe6666666666666L    # 0.7

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    .line 244
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100328

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100326

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    .line 240
    :pswitch_0
    iget v0, v1, Landroid/graphics/Point;->y:I

    int-to-double v7, v0

    mul-double v7, v7, v4

    double-to-int v0, v7

    .line 241
    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-double v7, v1

    mul-double v7, v7, v4

    mul-double v7, v7, v2

    double-to-int v1, v7

    goto :goto_1

    .line 236
    :pswitch_1
    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-double v7, v0

    mul-double v7, v7, v4

    double-to-int v0, v7

    .line 237
    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-double v7, v1

    mul-double v7, v7, v4

    mul-double v7, v7, v2

    double-to-int v1, v7

    goto :goto_1

    .line 232
    :pswitch_2
    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 233
    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    goto :goto_0

    .line 227
    :pswitch_3
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 228
    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 229
    invoke-static {p0}, Lcom/samsung/android/app/music/advertise/AdvertiseUtils;->a(Landroid/app/Activity;)I

    move-result v6

    :goto_0
    move v0, v2

    :goto_1
    const-string v2, "Advert.AdVideoActivity"

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLayout - frameWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", frameHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", adPaddingTop : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->n:Landroid/widget/LinearLayout;

    .line 254
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 255
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int v3, v1, v6

    .line 256
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v3, 0xd

    .line 257
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x1

    const/16 v4, 0xa

    if-eq p1, v3, :cond_0

    .line 264
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_2

    .line 261
    :cond_0
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 268
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->o:Landroid/widget/LinearLayout;

    .line 271
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 272
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 273
    iput v6, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 274
    iget-object v2, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 277
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 278
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;Z)V
    .locals 2

    const-string v0, "Advert.AdVideoActivity"

    const-string v1, "launch"

    .line 71
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "EXTRA_AD_POPUP_TYPE"

    .line 75
    invoke-virtual {p1}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->getValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "EXTRA_BOOLEAN_CHANGED_CP"

    .line 76
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "Advert.AdVideoActivity"

    const-string v1, "setLayoutByConfiguration"

    .line 198
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/advertise/AdvertiseUtils;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 201
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v1, :cond_0

    .line 202
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->a(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 204
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->a(I)V

    goto :goto_0

    .line 207
    :cond_1
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v1, :cond_2

    const/4 p1, 0x3

    .line 208
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->a(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    .line 210
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->a(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "Advert.AdVideoActivity"

    const-string v1, "release"

    .line 142
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-boolean v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->i:Z

    if-nez v0, :cond_0

    const-string v0, "Advert.AdVideoActivity"

    const-string v1, "release - 3"

    .line 145
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->j:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->c()V

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->i:Z

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->finish()V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/advertise/KeyBackPressedListener;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->e:Lcom/samsung/android/app/music/advertise/KeyBackPressedListener;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->h:Z

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "Advert.AdVideoActivity"

    const-string v1, "onBackPressed"

    .line 178
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->e:Lcom/samsung/android/app/music/advertise/KeyBackPressedListener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->e:Lcom/samsung/android/app/music/advertise/KeyBackPressedListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/advertise/KeyBackPressedListener;->a()V

    goto :goto_0

    .line 183
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 193
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 194
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 82
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRA_BOOLEAN_CHANGED_CP"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->h:Z

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRA_AD_POPUP_TYPE"

    sget-object v2, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->VIDEO:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->getValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->f:I

    .line 86
    iput-boolean v1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->i:Z

    const p1, 0x7f04000c

    .line 88
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->setContentView(I)V

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->k:Landroid/content/Context;

    .line 91
    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->overridePendingTransition(II)V

    const p1, 0x7f13012f

    .line 93
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->n:Landroid/widget/LinearLayout;

    const p1, 0x7f130130

    .line 94
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->o:Landroid/widget/LinearLayout;

    const p1, 0x7f130131

    .line 95
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->m:Landroid/widget/LinearLayout;

    const p1, 0x7f130132

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->l:Landroid/widget/FrameLayout;

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->a(Landroid/content/res/Configuration;)V

    .line 101
    sget-object v0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity$1;->a:[I

    iget v1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->f:I

    invoke-static {v1}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->create(I)Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    .line 115
    iput v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->g:I

    .line 116
    iget-boolean v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->h:Z

    invoke-static {v0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->a(Z)Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;

    move-result-object v0

    goto :goto_0

    .line 111
    :pswitch_1
    iput v1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->g:I

    .line 112
    iget-boolean v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->h:Z

    invoke-static {v0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->a(Z)Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;

    move-result-object v0

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/advertise/AdScheduler;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/advertise/AdScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/advertise/AdScheduler;->c()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->g:I

    .line 104
    iget v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->g:I

    if-ne v0, v1, :cond_0

    .line 105
    iget-boolean v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->h:Z

    invoke-static {v0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;->a(Z)Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentMezzoVideo;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->h:Z

    invoke-static {v0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;->a(Z)Lcom/samsung/android/app/music/advertise/AdVideo/AdFragmentIncrossVideo;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const-string v1, "Advert.AdVideoActivity"

    const-string v2, "onCreate - f == null"

    .line 124
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->finish()V

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 129
    invoke-virtual {v1, p1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 130
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 132
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "842"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c(Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->k:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/advertise/AdScheduler;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/advertise/AdScheduler;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/advertise/AdScheduler;->a(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .line 155
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    const-string v0, "Advert.AdVideoActivity"

    const-string v1, "onDestroy"

    .line 157
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/advertise/AdScheduler;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/advertise/AdScheduler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/advertise/AdScheduler;->a(Z)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 171
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    const-string v0, "Advert.AdVideoActivity"

    const-string v1, "onPause"

    .line 173
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 164
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    const-string v0, "Advert.AdVideoActivity"

    const-string v1, "onResume"

    .line 166
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
