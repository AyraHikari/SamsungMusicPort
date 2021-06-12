.class public Lcom/samsung/android/sdk/ppmt/content/PopupCard;
.super Lcom/samsung/android/sdk/ppmt/content/Card;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "PopupCard"


# instance fields
.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ppmt/content/CardAction;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ppmt/content/CardAction;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/CharSequence;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/ppmt/content/Card;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->g:I

    return v0
.end method

.method public B()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->h:I

    return v0
.end method

.method public C()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->i:I

    return v0
.end method

.method public D()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->j:I

    return v0
.end method

.method public E()Ljava/lang/CharSequence;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->n:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->o:Ljava/lang/String;

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->p:Ljava/lang/String;

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->q:Ljava/lang/String;

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->r:Ljava/lang/String;

    return-object v0
.end method

.method public J()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ppmt/content/CardAction;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method public K()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ppmt/content/CardAction;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->n:Ljava/lang/CharSequence;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ppmt/content/CardAction;",
            ">;)V"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->l:Ljava/util/ArrayList;

    return-void
.end method

.method public a()Z
    .locals 3

    .line 41
    invoke-super {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->b:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->b:I

    const/4 v2, 0x4

    if-gt v0, v2, :cond_0

    return v1

    .line 47
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] not supported type. type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/ppmt/content/CardAction;",
            ">;)V"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->m:Ljava/util/ArrayList;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->c:Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->o:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->d:Z

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->p:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->e:Z

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->q:Ljava/lang/String;

    return-void
.end method

.method public f(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->b:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->r:Ljava/lang/String;

    return-void
.end method

.method public g(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->k:I

    return-void
.end method

.method public h(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->f:I

    return-void
.end method

.method public i(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->g:I

    return-void
.end method

.method public j(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->h:I

    return-void
.end method

.method public k(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->i:I

    return-void
.end method

.method public l(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->j:I

    return-void
.end method

.method public t()Landroid/os/Bundle;
    .locals 7

    .line 189
    invoke-super {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->t()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "template_type"

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->u()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "bottom_visible"

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->v()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "close_visible"

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->w()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "btn_align"

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->x()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "color_bg"

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->z()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "color_bottom"

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->A()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "color_btn_text"

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->C()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "color_body"

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->B()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "color_line"

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->D()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "body_text"

    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->E()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "web"

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "btn1_text"

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "btn2_text"

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "img_main"

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->J()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->J()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->J()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/ppmt/content/CardAction;

    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "btn1_action"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->K()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_1
    if-ge v3, v2, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->K()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->K()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ppmt/content/CardAction;

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "btn2_action"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "disturb"

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->y()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public u()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->b:I

    return v0
.end method

.method public v()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->c:Z

    return v0
.end method

.method public w()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->d:Z

    return v0
.end method

.method public x()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->k:I

    return v0
.end method

.method public y()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->e:Z

    return v0
.end method

.method public z()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->f:I

    return v0
.end method
