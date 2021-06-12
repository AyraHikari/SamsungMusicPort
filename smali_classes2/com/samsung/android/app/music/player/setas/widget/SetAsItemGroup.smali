.class public abstract Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetAs-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "saved_state_checked_item_id"

    .line 16
    iput-object v0, p0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->b:Ljava/lang/String;

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->c:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->e:I

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;

    return-object p1
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public final a(ILcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;)V
    .locals 1

    .line 47
    invoke-virtual {p2, p0}, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;->setOnCheckChangedListener(Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;)V

    .line 48
    invoke-virtual {p2, p0}, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 3

    .line 30
    sget-object v0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - onCheckChanged() - id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", checked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget v0, p0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->e:I

    if-eq v0, p1, :cond_1

    if-eqz p2, :cond_1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->c:Landroid/util/SparseArray;

    iget v1, p0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->e:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;->setChecked(Z)V

    .line 36
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->e:I

    goto :goto_0

    .line 37
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->e:I

    if-ne v0, p1, :cond_2

    if-nez p2, :cond_2

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->e:I

    .line 41
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->d:Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;

    if-eqz v0, :cond_3

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->d:Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;->a(IZ)V

    :cond_3
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->a()Ljava/lang/String;

    move-result-object v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "saved_state_checked_item_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->e:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    sget-object p1, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - saveInstanceState checked-item-id : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->e:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->d:Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;

    return-void
.end method

.method public final b()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->e:I

    return v0
.end method

.method public final b(IZ)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->a()Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "saved_state_checked_item_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_0

    .line 68
    iget-object v1, p0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 70
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemLayout;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 73
    :cond_1
    :goto_0
    sget-object v1, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - restoreInstanceState checked item :  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(I)Z
    .locals 1

    .line 89
    iget v0, p0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->e:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->e:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c()Z
    .locals 2

    .line 85
    iget v0, p0, Lcom/samsung/android/app/music/player/setas/widget/SetAsItemGroup;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
