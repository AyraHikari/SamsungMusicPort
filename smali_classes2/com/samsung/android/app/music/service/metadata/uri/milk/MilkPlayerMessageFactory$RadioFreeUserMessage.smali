.class final Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$RadioFreeUserMessage;
.super Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$BaseMilkPlayerMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RadioFreeUserMessage"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 612
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$BaseMilkPlayerMessage;-><init>(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 613
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$RadioFreeUserMessage;->a:Landroid/app/Activity;

    return-void
.end method

.method static a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    return-object p0
.end method

.method static a(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;
    .locals 1

    .line 608
    new-instance v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$RadioFreeUserMessage;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$RadioFreeUserMessage;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public doPositive()V
    .locals 1

    .line 639
    invoke-super {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->doPositive()V

    .line 640
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$RadioFreeUserMessage;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/product/ProductActivity;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public getLayout()I
    .locals 1

    const v0, 0x7f04012b

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$RadioFreeUserMessage;->a:Landroid/app/Activity;

    const v1, 0x7f0b02e3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNegativeText()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getPositiveText()Ljava/lang/CharSequence;
    .locals 2

    .line 628
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$RadioFreeUserMessage;->a:Landroid/app/Activity;

    const v1, 0x7f0b01b7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$RadioFreeUserMessage;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public gravity()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method
