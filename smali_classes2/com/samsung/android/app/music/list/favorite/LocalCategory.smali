.class public final Lcom/samsung/android/app/music/list/favorite/LocalCategory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/favorite/Category;


# instance fields
.field private final id:Ljava/lang/String;

.field private final subCategoryType:Ljava/lang/Integer;

.field private final type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/list/favorite/LocalCategory;-><init>(ILjava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/music/list/favorite/LocalCategory;->type:I

    iput-object p2, p0, Lcom/samsung/android/app/music/list/favorite/LocalCategory;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/favorite/LocalCategory;->subCategoryType:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 865
    check-cast p3, Ljava/lang/Integer;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/favorite/LocalCategory;-><init>(ILjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 864
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/LocalCategory;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubCategoryType()Ljava/lang/Integer;
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/LocalCategory;->subCategoryType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 863
    iget v0, p0, Lcom/samsung/android/app/music/list/favorite/LocalCategory;->type:I

    return v0
.end method
