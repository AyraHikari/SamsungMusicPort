.class public Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;-><init>()V

    return-void
.end method

.method public static c()Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;
    .locals 1

    .line 24
    new-instance v0, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f040127

    return v0
.end method

.method protected a(Landroid/app/Dialog;)V
    .locals 6

    .line 70
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 72
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100501

    .line 76
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 79
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->b(Landroid/content/Context;)I

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->d(Landroid/content/Context;)I

    .line 80
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->e(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    .line 82
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 83
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100500

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 89
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 92
    :cond_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v1, 0x31

    .line 93
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f130398

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/settings/SettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->dismiss()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 36
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1102e8

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f040127

    .line 39
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->a(Landroid/app/Dialog;)V

    const v0, 0x7f130398

    .line 42
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f13039a

    .line 43
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f130399

    .line 44
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkLocalOnlyDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0f0179

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 46
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 49
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 51
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
