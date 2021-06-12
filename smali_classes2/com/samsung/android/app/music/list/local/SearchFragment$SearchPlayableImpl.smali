.class Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/common/SearchPlayable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchPlayableImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/SearchFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment;)V
    .locals 0

    .line 840
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment;Lcom/samsung/android/app/music/list/local/SearchFragment$1;)V
    .locals 0

    .line 840
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;II)[J
    .locals 0

    .line 840
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;->b(II)[J

    move-result-object p0

    return-object p0
.end method

.method private b(II)[J
    .locals 10

    .line 848
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 849
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/search/SearchableAdapter;

    .line 850
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-gt p1, p2, :cond_4

    .line 853
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, "SMUSIC-UiList"

    .line 855
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid item selected position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 859
    :cond_0
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->g(I)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_1

    const-string v5, "SMUSIC-UiList"

    .line 861
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid audioId position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 865
    :cond_1
    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/search/SearchableAdapter;->a(Landroid/database/Cursor;)I

    move-result v5

    .line 866
    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-static {v8, v2, v6, v7, v5}, Lcom/samsung/android/app/music/list/local/SearchFragment;->a(Lcom/samsung/android/app/music/list/local/SearchFragment;Landroid/content/ContentResolver;JI)[J

    move-result-object v5

    if-eqz v5, :cond_2

    .line 867
    array-length v6, v5

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    add-int/2addr v4, v6

    if-lez v4, :cond_3

    .line 869
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 872
    :cond_4
    new-array p1, v4, [J

    .line 874
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 875
    array-length v2, v1

    invoke-static {v1, v3, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 876
    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_3

    :cond_5
    return-object p1
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 844
    new-instance v0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;II)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl$ItemIdGetterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
