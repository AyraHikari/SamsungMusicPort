.class public Lcom/samsung/android/app/music/search/LocalSearchCursor;
.super Lcom/samsung/android/app/music/search/AbstractSearchCursor;
.source "SourceFile"


# instance fields
.field private d:Landroid/database/Cursor;

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;I)V
    .locals 4
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/AbstractSearchCursor;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->e:I

    .line 22
    iput v0, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->f:I

    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->g:I

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->d:Landroid/database/Cursor;

    .line 29
    iget-object p1, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->d:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->d:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->d:Landroid/database/Cursor;

    const-string v3, "mime_type"

    .line 32
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->b(Ljava/lang/String;)I

    move-result p1

    if-ne p1, p2, :cond_2

    .line 34
    iget p1, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->e:I

    if-ne p1, v0, :cond_1

    .line 35
    iput v1, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->e:I

    .line 37
    :cond_1
    iput v1, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->f:I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 40
    iget-object p1, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->d:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_0

    .line 42
    :cond_3
    iget p1, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->e:I

    if-ltz p1, :cond_4

    .line 43
    iget p1, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->e:I

    iput p1, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->g:I

    .line 44
    iget-object p1, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->d:Landroid/database/Cursor;

    iget p2, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->g:I

    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_4
    return-void
.end method

.method private b()I
    .locals 2

    .line 73
    iget v0, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->g:I

    iget v1, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->e:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public a()Landroid/database/Cursor;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->d:Landroid/database/Cursor;

    iget v1, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->g:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/search/LocalSearchCursor;->c(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->d:Landroid/database/Cursor;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected c()Ljava/lang/Object;
    .locals 2

    .line 148
    iget v0, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->g:I

    iget v1, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->a:Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->a:Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;

    return-object v0

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/LocalSearchCursor;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchCursor;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->b:Lcom/samsung/android/app/music/search/AbstractSearchCursor$ViewMoreItem;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->b:Lcom/samsung/android/app/music/search/AbstractSearchCursor$ViewMoreItem;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 59
    iget v0, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 62
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->f:I

    iget v1, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->e:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchCursor;->f()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    .line 134
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/LocalSearchCursor;->getString(I)Ljava/lang/String;

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

    .line 124
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/LocalSearchCursor;->getString(I)Ljava/lang/String;

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

    .line 104
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/LocalSearchCursor;->getString(I)Ljava/lang/String;

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

    .line 114
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/LocalSearchCursor;->getString(I)Ljava/lang/String;

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

    .line 94
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/LocalSearchCursor;->getString(I)Ljava/lang/String;

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

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchCursor;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/search/LocalSearchCursor;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchCursor;->a()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isNull(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onMove(II)Z
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchCursor;->getCount()I

    move-result p1

    if-lt p2, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 53
    :cond_0
    iget p1, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->e:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/samsung/android/app/music/search/LocalSearchCursor;->g:I

    const/4 p1, 0x1

    return p1
.end method
