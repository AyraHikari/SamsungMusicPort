.class public abstract Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;
.super Landroid/database/AbstractCursor;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/database/AbstractCursor;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;"
    }
.end annotation


# static fields
.field protected static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:Z

.field private d:I

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->a:Ljava/util/ArrayList;

    .line 22
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->a:Ljava/util/ArrayList;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->a:Ljava/util/ArrayList;

    const-string v1, "has_more"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;-><init>(Ljava/util/List;ZI)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;ZI)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->b:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->e:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    :cond_0
    iput-boolean p2, p0, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->c:Z

    .line 41
    iput p3, p0, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->d:I

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)J
    .locals 4

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TItem;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->e:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method b(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ImageModel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 157
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->d:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 2

    .line 66
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    .line 138
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 0

    .line 128
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public getInt(I)I
    .locals 0

    .line 108
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 118
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 0

    .line 98
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    .line 71
    sget-object v0, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "has_more"

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->c:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 76
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->b:I

    if-gez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->e:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->b:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->a(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isNull(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public moveItem(II)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->e:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public onMove(II)Z
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 91
    :cond_0
    iput p2, p0, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;->b:I

    const/4 p1, 0x1

    return p1
.end method
