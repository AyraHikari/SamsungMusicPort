.class public abstract Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->b:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->a:Ljava/util/ArrayList;

    .line 30
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->d:I

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;I)Ljava/lang/String;
.end method

.method public a()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->c:Ljava/lang/String;

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public b(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 58
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->d:I

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->a:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 60
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->d:I

    if-gt p2, v0, :cond_1

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-ge v0, v1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 70
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->d:I

    if-gt p2, v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_3
    return-object p1
.end method
