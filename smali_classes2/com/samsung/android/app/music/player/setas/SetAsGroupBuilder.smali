.class public abstract enum Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;

.field public static final enum RecommendGroup:Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;

.field public static final enum ToneGroup:Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 23
    new-instance v0, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$1;

    const-string v1, "RecommendGroup"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;->RecommendGroup:Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;

    .line 35
    new-instance v0, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$2;

    const-string v1, "ToneGroup"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;->ToneGroup:Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;

    const/4 v0, 0x2

    .line 21
    new-array v0, v0, [Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;

    sget-object v1, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;->RecommendGroup:Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;->ToneGroup:Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;->$VALUES:[Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;
    .locals 1

    .line 21
    const-class v0, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;
    .locals 1

    .line 21
    sget-object v0, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;->$VALUES:[Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;

    return-object v0
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;Landroid/view/View;)V
    .locals 8

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;->getItems()[Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;

    move-result-object v0

    .line 107
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 108
    iget v4, v3, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;->b:I

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    move-object v4, v5

    goto :goto_1

    :cond_0
    iget v4, v3, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;->b:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 109
    :goto_1
    iget v7, v3, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;->c:I

    if-ne v7, v6, :cond_1

    goto :goto_2

    :cond_1
    iget v5, v3, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;->c:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 111
    :goto_2
    iget v6, v3, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;->a:I

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;

    .line 112
    invoke-virtual {p0, v6, v4, v5}, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;->initItemInternal(Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget v3, v3, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;->a:I

    invoke-virtual {p2, v3, v6}, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->a(ILcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public abstract getItems()[Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method initItemInternal(Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f13054b

    .line 72
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const p2, 0x7f13054c

    .line 76
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 78
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 79
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method
