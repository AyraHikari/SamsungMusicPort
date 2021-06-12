.class public Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;
.super Landroid/database/AbstractCursor;
.source "SourceFile"


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor$observer$1;

.field private b:Landroid/database/Cursor;

.field private final c:[Landroid/database/Cursor;


# direct methods
.method public constructor <init>([Landroid/database/Cursor;)V
    .locals 4

    const-string v0, "cursors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->c:[Landroid/database/Cursor;

    .line 35
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor$observer$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor$observer$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->a:Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor$observer$1;

    .line 52
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->c:[Landroid/database/Cursor;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b:Landroid/database/Cursor;

    .line 54
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->c:[Landroid/database/Cursor;

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    .line 55
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->a:Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor$observer$1;

    check-cast v3, Landroid/database/DataSetObserver;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->mPos:I

    return-void
.end method


# virtual methods
.method public final b()Landroid/database/Cursor;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    return-object v0
.end method

.method public close()V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->c:[Landroid/database/Cursor;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 156
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->c:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->c:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 159
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->c:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 161
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->c:[Landroid/database/Cursor;

    const/4 v3, 0x0

    check-cast v3, Landroid/database/Cursor;

    aput-object v3, v2, v1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_4
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    return-void
.end method

.method public deactivate()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->c:[Landroid/database/Cursor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 148
    invoke-interface {v3}, Landroid/database/Cursor;->deactivate()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->deactivate()V

    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    const-string v0, "cursor!!.getBlob(column)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "cursor!!.columnNames"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 142
    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getCount()I
    .locals 6

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->c:[Landroid/database/Cursor;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    .line 62
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 63
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public getDouble(I)D
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 3

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "column="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mPos="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->getPosition()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", columnCount="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b:Landroid/database/Cursor;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", count="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b:Landroid/database/Cursor;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", isClosed="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b:Landroid/database/Cursor;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Cursor"

    .line 109
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public getShort(I)S
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getType(I)I
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result p1

    return p1
.end method

.method public isNull(I)Z
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    return p1
.end method

.method public onMove(II)Z
    .locals 6

    const/4 p1, 0x0

    .line 75
    check-cast p1, Landroid/database/Cursor;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b:Landroid/database/Cursor;

    .line 77
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->c:[Landroid/database/Cursor;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v4, p1, v2

    if-nez v4, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    add-int/2addr v5, v3

    if-ge p2, v5, :cond_1

    .line 82
    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b:Landroid/database/Cursor;

    goto :goto_2

    .line 86
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/2addr v3, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b:Landroid/database/Cursor;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b:Landroid/database/Cursor;

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    sub-int/2addr p2, v3

    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 4

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->c:[Landroid/database/Cursor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 168
    invoke-interface {v3, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 4

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->c:[Landroid/database/Cursor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 180
    invoke-interface {v3, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public requery()Z
    .locals 6

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->c:[Landroid/database/Cursor;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    .line 193
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 197
    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->requery()Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 4

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->c:[Landroid/database/Cursor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 174
    invoke-interface {v3, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 4

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->c:[Landroid/database/Cursor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 186
    invoke-interface {v3, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
