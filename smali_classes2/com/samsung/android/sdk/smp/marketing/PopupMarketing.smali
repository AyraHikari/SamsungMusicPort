.class Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;
.super Lcom/samsung/android/sdk/smp/marketing/Marketing;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "PopupMarketing"


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
            "Lcom/samsung/android/sdk/smp/marketing/MarketingLink;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/marketing/MarketingLink;",
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

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/smp/marketing/Marketing;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method A()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->q:Ljava/lang/String;

    return-object v0
.end method

.method B()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->r:Ljava/lang/String;

    return-object v0
.end method

.method C()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/marketing/MarketingLink;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method D()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/marketing/MarketingLink;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method a(Ljava/lang/CharSequence;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->n:Ljava/lang/CharSequence;

    return-void
.end method

.method a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/marketing/MarketingLink;",
            ">;)V"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->l:Ljava/util/ArrayList;

    return-void
.end method

.method a(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->c:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 41
    invoke-super {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->b:I

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingData$Popup;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method b(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/marketing/MarketingLink;",
            ">;)V"
        }
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->m:Ljava/util/ArrayList;

    return-void
.end method

.method b(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->d:Z

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->o:Ljava/lang/String;

    return-void
.end method

.method c(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->e:Z

    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->p:Ljava/lang/String;

    return-void
.end method

.method e(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->b:I

    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->q:Ljava/lang/String;

    return-void
.end method

.method f(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->k:I

    return-void
.end method

.method f(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->r:Ljava/lang/String;

    return-void
.end method

.method g(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->f:I

    return-void
.end method

.method h(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->g:I

    return-void
.end method

.method i(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->h:I

    return-void
.end method

.method j(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->i:I

    return-void
.end method

.method k(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->j:I

    return-void
.end method

.method public m()Landroid/os/Bundle;
    .locals 8

    .line 182
    invoke-super {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->m()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "template_type"

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->n()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "bottom_visible"

    .line 184
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->o()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "close_visible"

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->p()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "btn_align"

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->q()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "color_bg"

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->s()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "color_bottom"

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->t()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "color_btn_text"

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->v()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "color_body"

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->u()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "color_line"

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->w()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "body_text"

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->x()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "web"

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "btn1_text"

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "btn2_text"

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "img_main"

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->C()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->C()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->C()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;

    .line 201
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "btn1_link"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 202
    invoke-virtual {v5}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b()Ljava/lang/String;

    move-result-object v5

    .line 203
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 204
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->D()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->D()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->D()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;

    .line 211
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "btn2_link"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 212
    invoke-virtual {v5}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b()Ljava/lang/String;

    move-result-object v5

    .line 213
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 214
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 218
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "link_uris"

    .line 219
    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_4
    const-string v1, "disturb"

    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->r()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method n()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->b:I

    return v0
.end method

.method o()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->c:Z

    return v0
.end method

.method p()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->d:Z

    return v0
.end method

.method q()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->k:I

    return v0
.end method

.method r()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->e:Z

    return v0
.end method

.method s()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->f:I

    return v0
.end method

.method t()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->g:I

    return v0
.end method

.method u()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->h:I

    return v0
.end method

.method v()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->i:I

    return v0
.end method

.method w()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->j:I

    return v0
.end method

.method x()Ljava/lang/CharSequence;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->n:Ljava/lang/CharSequence;

    return-object v0
.end method

.method y()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->o:Ljava/lang/String;

    return-object v0
.end method

.method z()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;->p:Ljava/lang/String;

    return-object v0
.end method
