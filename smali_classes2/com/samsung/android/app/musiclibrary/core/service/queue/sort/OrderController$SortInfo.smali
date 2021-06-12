.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SortInfo"
.end annotation


# static fields
.field private static final EMPTY_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOrderedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSortMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->EMPTY_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 211
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->mSortMode:I

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->mOrderedList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 211
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->mSortMode:I

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->mOrderedList:Ljava/util/List;

    .line 220
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->mSortMode:I

    .line 221
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->mOrderedList:Ljava/util/List;

    return-void
.end method

.method public static getSortInfo(ILjava/util/List;)Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;"
        }
    .end annotation

    .line 245
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;-><init>(ILjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getOrderedList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->mOrderedList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->mOrderedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->mOrderedList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 239
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->EMPTY_LIST:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSortMode()I
    .locals 1

    .line 226
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->mSortMode:I

    return v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 234
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->mOrderedList:Ljava/util/List;

    return-void
.end method

.method public setSortMode(I)V
    .locals 0

    .line 230
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$SortInfo;->mSortMode:I

    return-void
.end method
