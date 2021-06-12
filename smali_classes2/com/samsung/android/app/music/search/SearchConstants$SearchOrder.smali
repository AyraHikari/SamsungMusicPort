.class public final enum Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/search/SearchConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

.field public static final enum ACCURACY:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

.field public static final enum LATEST:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

.field public static final enum NAME:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

.field public static final enum POPULAR:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 76
    new-instance v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    const-string v1, "ACCURACY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->ACCURACY:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    new-instance v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    const-string v1, "POPULAR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->POPULAR:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    new-instance v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    const-string v1, "LATEST"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->LATEST:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    new-instance v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    const-string v1, "NAME"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->NAME:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    .line 75
    new-array v0, v6, [Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->ACCURACY:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->POPULAR:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->LATEST:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->NAME:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->$VALUES:[Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput p3, p0, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->value:I

    return-void
.end method

.method public static fromFilterOption(I)Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 96
    sget-object p0, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->ACCURACY:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    return-object p0

    .line 90
    :pswitch_0
    sget-object p0, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->POPULAR:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    return-object p0

    .line 88
    :pswitch_1
    sget-object p0, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->ACCURACY:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    return-object p0

    .line 92
    :cond_0
    sget-object p0, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->LATEST:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    return-object p0

    .line 94
    :cond_1
    sget-object p0, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->NAME:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;
    .locals 1

    .line 75
    const-class v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;
    .locals 1

    .line 75
    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->$VALUES:[Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    return-object v0
.end method


# virtual methods
.method public toFilterOption()I
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 101
    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$1;->a:[I

    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xb

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/16 v0, 0xe

    return v0

    :pswitch_2
    const/16 v0, 0xc

    return v0

    :pswitch_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
