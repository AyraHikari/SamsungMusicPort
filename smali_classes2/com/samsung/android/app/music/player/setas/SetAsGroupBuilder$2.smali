.class final enum Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$2;
.super Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# instance fields
.field private final ALL_ITEMS:[Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;-><init>(Ljava/lang/String;ILcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$1;)V

    const/4 p1, 0x3

    .line 36
    new-array p1, p1, [Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;

    new-instance p2, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;

    const/4 v0, -0x1

    const v1, 0x7f13054f

    const v2, 0x7f0b0176

    invoke-direct {p2, v1, v2, v0}, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;-><init>(III)V

    const/4 v1, 0x0

    aput-object p2, p1, v1

    new-instance p2, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;

    const v1, 0x7f130555

    const v2, 0x7f0b0175

    invoke-direct {p2, v1, v2, v0}, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;-><init>(III)V

    const/4 v1, 0x1

    aput-object p2, p1, v1

    new-instance p2, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;

    const v1, 0x7f130556

    const v2, 0x7f0b0174

    invoke-direct {p2, v1, v2, v0}, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;-><init>(III)V

    const/4 v0, 0x2

    aput-object p2, p1, v0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$2;->ALL_ITEMS:[Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;Landroid/view/View;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;->build(Landroid/content/Context;Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;Landroid/view/View;)V

    const-string p3, "phone"

    .line 50
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 51
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x7f13054f

    .line 52
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->a(I)Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;

    move-result-object p1

    const/16 p3, 0x8

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const p1, 0x7f130555

    .line 56
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->a(I)Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const p1, 0x7f130556

    .line 60
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->a(I)Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    .line 62
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method public getItems()[Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$2;->ALL_ITEMS:[Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;

    return-object v0
.end method
