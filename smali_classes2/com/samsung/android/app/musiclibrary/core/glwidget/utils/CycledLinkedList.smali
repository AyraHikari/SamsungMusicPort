.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$EmptyIterator;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListItem:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "T",
        "ListItem;",
        ">;"
    }
.end annotation


# static fields
.field private static MAX_ITERATOR_NEST_LEVEL:I = 0x20


# instance fields
.field private volatile mCurInteratorIndex:I

.field private final mEmptyIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "T",
            "ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIterators:[Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator<",
            "T",
            "ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mIteratorsLock:Ljava/lang/Object;

.field private mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item<",
            "T",
            "ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mSelected:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item<",
            "T",
            "ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IILcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory<",
            "T",
            "ListItem;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mIteratorsLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$EmptyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$EmptyIterator;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mEmptyIterable:Ljava/lang/Iterable;

    if-lez p1, :cond_2

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->createIterators()V

    .line 63
    invoke-direct {p0, v1, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->createNew(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory;)Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    move-result-object v0

    const/4 v1, 0x1

    move-object v2, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 66
    invoke-direct {p0, v2, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->createNew(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory;)Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_0
    iput-object v0, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->next:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    .line 70
    iput-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->prev:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    .line 73
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    const/4 p1, 0x0

    :goto_1
    if-ge p1, p2, :cond_1

    .line 77
    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->next:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 79
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mSelected:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    return-void

    .line 60
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Size should be at least 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createIterators()V
    .locals 4

    .line 153
    sget v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->MAX_ITERATOR_NEST_LEVEL:I

    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;

    check-cast v0, [Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mIterators:[Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;

    const/4 v0, 0x0

    .line 154
    :goto_0
    sget v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->MAX_ITERATOR_NEST_LEVEL:I

    if-ge v0, v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mIterators:[Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$1;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createNew(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory;)Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item<",
            "T",
            "ListItem;",
            ">;",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory<",
            "T",
            "ListItem;",
            ">;)",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item<",
            "T",
            "ListItem;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$1;)V

    .line 84
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Factory;->obtain()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->item:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 86
    iput-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->next:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    .line 88
    :cond_0
    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->prev:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    return-object v0
.end method

.method private obtainIterable(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Z)Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item<",
            "T",
            "ListItem;",
            ">;",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item<",
            "T",
            "ListItem;",
            ">;Z)",
            "Ljava/lang/Iterable<",
            "T",
            "ListItem;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mIteratorsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mIterators:[Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mCurInteratorIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mCurInteratorIndex:I

    aget-object v1, v1, v2

    .line 144
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mCurInteratorIndex:I

    sget v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->MAX_ITERATOR_NEST_LEVEL:I

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    .line 145
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mCurInteratorIndex:I

    .line 147
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;->reset(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Z)Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$ListIterator;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 147
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public getLeft()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "ListItem;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public getRight()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "ListItem;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->prev:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public getSelected()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "ListItem;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mSelected:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "T",
            "ListItem;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->obtainIterable(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Z)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 118
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toLeft()Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "T",
            "ListItem;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mSelected:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    if-ne v1, v2, :cond_0

    .line 124
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mEmptyIterable:Ljava/lang/Iterable;

    monitor-exit v0

    return-object v1

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mSelected:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->prev:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->prev:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->obtainIterable(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Z)Ljava/lang/Iterable;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toRight()Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "T",
            "ListItem;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mSelected:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->next:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    if-ne v1, v2, :cond_0

    .line 133
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mEmptyIterable:Ljava/lang/Iterable;

    monitor-exit v0

    return-object v1

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mSelected:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->next:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->obtainIterable(Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;Z)Ljava/lang/Iterable;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 136
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateSelection(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mSelected:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->next:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mSelected:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->next:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    .line 105
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 108
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mSelected:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->prev:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mSelected:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;->prev:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList;->mLeft:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/CycledLinkedList$Item;

    .line 110
    monitor-exit p1

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
