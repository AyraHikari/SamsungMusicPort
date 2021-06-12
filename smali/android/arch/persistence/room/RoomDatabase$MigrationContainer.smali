.class public Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/RoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MigrationContainer"
.end annotation


# instance fields
.field private a:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Landroid/arch/persistence/room/migration/Migration;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;->a:Landroid/support/v4/util/SparseArrayCompat;

    return-void
.end method

.method private a(Ljava/util/List;ZII)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/arch/persistence/room/migration/Migration;",
            ">;ZII)",
            "Ljava/util/List<",
            "Landroid/arch/persistence/room/migration/Migration;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    if-ge p3, p4, :cond_9

    goto :goto_1

    :cond_2
    if-le p3, p4, :cond_9

    .line 695
    :goto_1
    iget-object v3, p0, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;->a:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, p3}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/util/SparseArrayCompat;

    const/4 v4, 0x0

    if-nez v3, :cond_3

    return-object v4

    .line 700
    :cond_3
    invoke-virtual {v3}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v5

    const/4 v6, 0x0

    if-eqz p2, :cond_4

    add-int/lit8 v5, v5, -0x1

    const/4 v7, -0x1

    goto :goto_2

    :cond_4
    move v7, v5

    const/4 v5, 0x0

    :goto_2
    if-eq v5, v7, :cond_8

    .line 713
    invoke-virtual {v3, v5}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v8

    if-eqz p2, :cond_6

    if-gt v8, p4, :cond_5

    if-le v8, p3, :cond_5

    :goto_3
    const/4 v9, 0x1

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    goto :goto_4

    :cond_6
    if-lt v8, p4, :cond_5

    if-ge v8, p3, :cond_5

    goto :goto_3

    :goto_4
    if-eqz v9, :cond_7

    .line 721
    invoke-virtual {v3, v5}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p3, v8

    const/4 v6, 0x1

    goto :goto_5

    :cond_7
    add-int/2addr v5, v2

    goto :goto_2

    :cond_8
    :goto_5
    if-nez v6, :cond_1

    return-object v4

    :cond_9
    return-object p1
.end method

.method private a(Landroid/arch/persistence/room/migration/Migration;)V
    .locals 6

    .line 657
    iget v0, p1, Landroid/arch/persistence/room/migration/Migration;->a:I

    .line 658
    iget v1, p1, Landroid/arch/persistence/room/migration/Migration;->b:I

    .line 659
    iget-object v2, p0, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;->a:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/util/SparseArrayCompat;

    if-nez v2, :cond_0

    .line 661
    new-instance v2, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v2}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    .line 662
    iget-object v3, p0, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;->a:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 664
    :cond_0
    invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/persistence/room/migration/Migration;

    if-eqz v0, :cond_1

    const-string v3, "ROOM"

    .line 666
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Overriding migration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_1
    invoke-virtual {v2, v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->append(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(II)Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/arch/persistence/room/migration/Migration;",
            ">;"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    .line 684
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 687
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 688
    invoke-direct {p0, v1, v0, p1, p2}, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;->a(Ljava/util/List;ZII)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs a([Landroid/arch/persistence/room/migration/Migration;)V
    .locals 3
    .param p1    # [Landroid/arch/persistence/room/migration/Migration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 651
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 652
    invoke-direct {p0, v2}, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;->a(Landroid/arch/persistence/room/migration/Migration;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
