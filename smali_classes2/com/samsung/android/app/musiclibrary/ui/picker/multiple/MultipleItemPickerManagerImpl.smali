.class public Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;->a:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;->b:Ljava/util/HashSet;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(JZ)V
    .locals 1

    if-eqz p3, :cond_0

    .line 38
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;->b:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 39
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;->b:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;->a:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;->b:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 44
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;->a:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public a([J)V
    .locals 6

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 73
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    .line 74
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;->a:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;->b:Ljava/util/HashSet;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;

    .line 79
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;->a()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(J)Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;->b:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public a()[J
    .locals 5

    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 18
    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 20
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public a(I)[J
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;->a()[J

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method
