.class public Lcom/samsung/android/app/music/milk/MilkToast;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 1

    .line 27
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f04012d

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkToast;->a(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 4

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 51
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1303a4

    if-ne v0, v1, :cond_0

    .line 56
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    const v1, 0x7f100539

    const/4 v2, 0x0

    const/16 v3, 0x51

    if-ge p2, v0, :cond_2

    .line 64
    sget-object p2, Lcom/samsung/android/app/music/milk/MilkToast;->a:Landroid/widget/Toast;

    if-nez p2, :cond_1

    .line 65
    new-instance p2, Landroid/widget/Toast;

    invoke-direct {p2, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object p2, Lcom/samsung/android/app/music/milk/MilkToast;->a:Landroid/widget/Toast;

    .line 66
    sget-object p2, Lcom/samsung/android/app/music/milk/MilkToast;->a:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 67
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 66
    invoke-virtual {p2, v3, v2, p0}, Landroid/widget/Toast;->setGravity(III)V

    .line 68
    sget-object p0, Lcom/samsung/android/app/music/milk/MilkToast;->a:Landroid/widget/Toast;

    invoke-virtual {p0, p3}, Landroid/widget/Toast;->setDuration(I)V

    .line 69
    sget-object p0, Lcom/samsung/android/app/music/milk/MilkToast;->a:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 72
    :cond_1
    sget-object p0, Lcom/samsung/android/app/music/milk/MilkToast;->a:Landroid/widget/Toast;

    invoke-virtual {p0, p3}, Landroid/widget/Toast;->setDuration(I)V

    .line 73
    sget-object p0, Lcom/samsung/android/app/music/milk/MilkToast;->a:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 77
    :cond_2
    new-instance p2, Landroid/widget/Toast;

    invoke-direct {p2, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 79
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 78
    invoke-virtual {p2, v3, v2, p0}, Landroid/widget/Toast;->setGravity(III)V

    .line 80
    invoke-virtual {p2, p3}, Landroid/widget/Toast;->setDuration(I)V

    .line 81
    invoke-virtual {p2, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 84
    sget-object p0, Lcom/samsung/android/app/music/milk/MilkToast;->a:Landroid/widget/Toast;

    if-eqz p0, :cond_3

    .line 85
    sget-object p0, Lcom/samsung/android/app/music/milk/MilkToast;->a:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->cancel()V

    .line 88
    :cond_3
    sput-object p2, Lcom/samsung/android/app/music/milk/MilkToast;->a:Landroid/widget/Toast;

    .line 90
    :goto_1
    sget-object p0, Lcom/samsung/android/app/music/milk/MilkToast;->a:Landroid/widget/Toast;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 1

    const v0, 0x7f04012d

    .line 31
    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkToast;->a(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method
