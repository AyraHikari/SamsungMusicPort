.class public final Lcom/samsung/android/app/music/list/favorite/MilkCategory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/favorite/Category;


# instance fields
.field private final data1:Ljava/lang/String;

.field private final data2:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final imageUrl:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->type:I

    iput-object p2, p0, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->imageUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->data1:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->data2:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v1, p7, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 873
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object v8, p5

    :goto_0
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_1

    .line 874
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    goto :goto_1

    :cond_1
    move-object/from16 v9, p6

    :goto_1
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getData1()Ljava/lang/String;
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->data1:Ljava/lang/String;

    return-object v0
.end method

.method public final getData2()Ljava/lang/String;
    .locals 1

    .line 874
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->data2:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 870
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 869
    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/MilkCategory;->type:I

    return v0
.end method
