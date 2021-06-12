.class public Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/download/MilkDownloadable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemSourceIdGetterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/download/MilkDownloadable;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/util/SparseBooleanArray;

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/download/MilkDownloadable;Landroid/util/SparseBooleanArray;ILjava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->a:Lcom/samsung/android/app/music/download/MilkDownloadable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    const-class p1, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->b:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->c:Landroid/util/SparseBooleanArray;

    .line 54
    iput p3, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->d:I

    .line 55
    iput-object p4, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/util/SparseBooleanArray;I)[Ljava/lang/String;
    .locals 6

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->a:Lcom/samsung/android/app/music/download/MilkDownloadable;

    invoke-static {v0}, Lcom/samsung/android/app/music/download/MilkDownloadable;->a(Lcom/samsung/android/app/music/download/MilkDownloadable;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .line 66
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 67
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->e:Ljava/lang/String;

    .line 68
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 69
    iget-object v1, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 70
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 73
    new-array p2, p2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 75
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 76
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 77
    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 78
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p2, v4

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCheckedItemSourceIds() | checkedSourceIds count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 87
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->b:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCheckedItemSourceIds() Cursor in adapter does have "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->e:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " column"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected a([Ljava/lang/String;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->a:Lcom/samsung/android/app/music/download/MilkDownloadable;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/download/MilkDownloadable;->a(Lcom/samsung/android/app/music/download/MilkDownloadable;[Ljava/lang/String;)V

    return-void
.end method

.method protected varargs a([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->c:Landroid/util/SparseBooleanArray;

    iget v0, p0, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->d:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->a(Landroid/util/SparseBooleanArray;I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->a([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/download/MilkDownloadable$ItemSourceIdGetterTask;->a([Ljava/lang/String;)V

    return-void
.end method
