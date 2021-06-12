.class public Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:Landroid/content/Intent;

.field private v:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->j:I

    return-void
.end method

.method private d()Lcom/samsung/android/sdk/spage/card/ControllerData;
    .locals 2

    .line 133
    new-instance v0, Lcom/samsung/android/sdk/spage/card/ControllerData;

    const-string v1, "MediaPlay"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/spage/card/ControllerData;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->f:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/spage/card/ControllerData;->b(I)Lcom/samsung/android/sdk/spage/card/ControllerData;

    move-result-object v0

    .line 134
    iget-boolean v1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->v:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 135
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/spage/card/ControllerData;->a(I)Lcom/samsung/android/sdk/spage/card/ControllerData;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->j:I

    return v0
.end method

.method public a(Z)Lcom/samsung/android/sdk/spage/card/CardContent;
    .locals 6

    .line 75
    new-instance v0, Lcom/samsung/android/sdk/spage/card/ImageData;

    invoke-direct {v0}, Lcom/samsung/android/sdk/spage/card/ImageData;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "bixby_no_album_cover_dark"

    goto :goto_0

    :cond_0
    const-string p1, "bixby_no_album_cover_light"

    .line 77
    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/spage/card/ImageData;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/ImageData;

    goto :goto_1

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/spage/card/ImageData;->b(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/ImageData;

    .line 83
    :goto_1
    new-instance p1, Lcom/samsung/android/sdk/spage/card/RectData;

    invoke-direct {p1}, Lcom/samsung/android/sdk/spage/card/RectData;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 86
    new-instance v1, Lcom/samsung/android/sdk/spage/card/ConnectivityData;

    invoke-direct {v1}, Lcom/samsung/android/sdk/spage/card/ConnectivityData;-><init>()V

    const-string v2, "audio/*"

    .line 87
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/spage/card/ConnectivityData;->c(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/ConnectivityData;

    .line 88
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/spage/card/ConnectivityData;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/ConnectivityData;

    .line 89
    iget v2, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/spage/card/ConnectivityData;->b(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/ConnectivityData;

    const-string v2, "SPAGE_ON_MEDIA_PLAY"

    .line 90
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/spage/card/ConnectivityData;->d(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/ConnectivityData;

    .line 91
    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/spage/card/RectData;->a(Lcom/samsung/android/sdk/spage/card/ConnectivityData;)Lcom/samsung/android/sdk/spage/card/base/ActionFieldData;

    .line 94
    :cond_2
    new-instance v1, Lcom/samsung/android/sdk/spage/card/TextData;

    invoke-direct {v1}, Lcom/samsung/android/sdk/spage/card/TextData;-><init>()V

    .line 95
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 96
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/spage/card/TextData;->b(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/TextData;

    .line 99
    :cond_3
    new-instance v2, Lcom/samsung/android/sdk/spage/card/CardContent;

    iget v3, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->a:I

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/spage/card/CardContent;-><init>(I)V

    .line 100
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->b:Ljava/lang/String;

    const-string v4, "MULTIMEDIA_MUSICPLAYER_BASIC"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v1, "tag_data_1"

    .line 101
    new-instance v3, Lcom/samsung/android/sdk/spage/card/TextData;

    invoke-direct {v3}, Lcom/samsung/android/sdk/spage/card/TextData;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/spage/card/TextData;->b(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/TextData;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/sdk/spage/card/CardContent;->a(Ljava/lang/String;Lcom/samsung/android/sdk/spage/card/base/FieldData;)V

    const-string v1, "tag_data_2"

    .line 102
    new-instance v3, Lcom/samsung/android/sdk/spage/card/TextData;

    invoke-direct {v3}, Lcom/samsung/android/sdk/spage/card/TextData;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/spage/card/TextData;->b(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/TextData;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/sdk/spage/card/CardContent;->a(Ljava/lang/String;Lcom/samsung/android/sdk/spage/card/base/FieldData;)V

    const-string v1, "tag_data_3"

    .line 103
    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/sdk/spage/card/CardContent;->a(Ljava/lang/String;Lcom/samsung/android/sdk/spage/card/base/FieldData;)V

    const-string v0, "tag_data_4"

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->d()Lcom/samsung/android/sdk/spage/card/ControllerData;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/sdk/spage/card/CardContent;->a(Ljava/lang/String;Lcom/samsung/android/sdk/spage/card/base/FieldData;)V

    const-string v0, "tag_data_5"

    .line 105
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/spage/card/RectData;->c(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/base/ActionFieldData;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/samsung/android/sdk/spage/card/CardContent;->a(Ljava/lang/String;Lcom/samsung/android/sdk/spage/card/base/FieldData;)V

    goto/16 :goto_2

    :cond_4
    const-string v3, "tag_data_1"

    .line 107
    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/sdk/spage/card/CardContent;->a(Ljava/lang/String;Lcom/samsung/android/sdk/spage/card/base/FieldData;)V

    const-string v3, "tag_data_2"

    .line 108
    new-instance v4, Lcom/samsung/android/sdk/spage/card/TextData;

    invoke-direct {v4}, Lcom/samsung/android/sdk/spage/card/TextData;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/spage/card/TextData;->b(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/TextData;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/spage/card/CardContent;->a(Ljava/lang/String;Lcom/samsung/android/sdk/spage/card/base/FieldData;)V

    const-string v3, "tag_data_3"

    .line 109
    new-instance v4, Lcom/samsung/android/sdk/spage/card/TextData;

    invoke-direct {v4}, Lcom/samsung/android/sdk/spage/card/TextData;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/spage/card/TextData;->b(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/TextData;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/spage/card/CardContent;->a(Ljava/lang/String;Lcom/samsung/android/sdk/spage/card/base/FieldData;)V

    const-string v3, "tag_data_4"

    .line 110
    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/sdk/spage/card/CardContent;->a(Ljava/lang/String;Lcom/samsung/android/sdk/spage/card/base/FieldData;)V

    const-string v1, "tag_data_5"

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->d()Lcom/samsung/android/sdk/spage/card/ControllerData;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/sdk/spage/card/CardContent;->a(Ljava/lang/String;Lcom/samsung/android/sdk/spage/card/base/FieldData;)V

    const-string v1, "tag_data_6"

    .line 112
    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/sdk/spage/card/CardContent;->a(Ljava/lang/String;Lcom/samsung/android/sdk/spage/card/base/FieldData;)V

    const-string v0, "tag_data_7"

    .line 113
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/spage/card/RectData;->c(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/base/ActionFieldData;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/samsung/android/sdk/spage/card/CardContent;->a(Ljava/lang/String;Lcom/samsung/android/sdk/spage/card/base/FieldData;)V

    const-string p1, "tag_data_8"

    .line 114
    new-instance v0, Lcom/samsung/android/sdk/spage/card/ImageData;

    invoke-direct {v0}, Lcom/samsung/android/sdk/spage/card/ImageData;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/spage/card/ImageData;->b(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/ImageData;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/sdk/spage/card/CardContent;->a(Ljava/lang/String;Lcom/samsung/android/sdk/spage/card/base/FieldData;)V

    const-string p1, "tag_data_9"

    .line 115
    new-instance v0, Lcom/samsung/android/sdk/spage/card/TextData;

    invoke-direct {v0}, Lcom/samsung/android/sdk/spage/card/TextData;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/spage/card/TextData;->b(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/TextData;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/sdk/spage/card/CardContent;->a(Ljava/lang/String;Lcom/samsung/android/sdk/spage/card/base/FieldData;)V

    const-string p1, "tag_data_10"

    .line 116
    new-instance v0, Lcom/samsung/android/sdk/spage/card/TextData;

    invoke-direct {v0}, Lcom/samsung/android/sdk/spage/card/TextData;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/spage/card/TextData;->b(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/TextData;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/sdk/spage/card/CardContent;->a(Ljava/lang/String;Lcom/samsung/android/sdk/spage/card/base/FieldData;)V

    const-string p1, "tag_data_11"

    .line 117
    new-instance v0, Lcom/samsung/android/sdk/spage/card/RectData;

    invoke-direct {v0}, Lcom/samsung/android/sdk/spage/card/RectData;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/spage/card/RectData;->c(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/base/ActionFieldData;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/sdk/spage/card/CardContent;->a(Ljava/lang/String;Lcom/samsung/android/sdk/spage/card/base/FieldData;)V

    const-string p1, "tag_data_12"

    .line 118
    new-instance v0, Lcom/samsung/android/sdk/spage/card/ImageData;

    invoke-direct {v0}, Lcom/samsung/android/sdk/spage/card/ImageData;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/spage/card/ImageData;->b(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/ImageData;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/sdk/spage/card/CardContent;->a(Ljava/lang/String;Lcom/samsung/android/sdk/spage/card/base/FieldData;)V

    const-string p1, "tag_data_13"

    .line 119
    new-instance v0, Lcom/samsung/android/sdk/spage/card/TextData;

    invoke-direct {v0}, Lcom/samsung/android/sdk/spage/card/TextData;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/spage/card/TextData;->b(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/TextData;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/sdk/spage/card/CardContent;->a(Ljava/lang/String;Lcom/samsung/android/sdk/spage/card/base/FieldData;)V

    const-string p1, "tag_data_14"

    .line 120
    new-instance v0, Lcom/samsung/android/sdk/spage/card/TextData;

    invoke-direct {v0}, Lcom/samsung/android/sdk/spage/card/TextData;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/spage/card/TextData;->b(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/TextData;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/sdk/spage/card/CardContent;->a(Ljava/lang/String;Lcom/samsung/android/sdk/spage/card/base/FieldData;)V

    const-string p1, "tag_data_15"

    .line 121
    new-instance v0, Lcom/samsung/android/sdk/spage/card/RectData;

    invoke-direct {v0}, Lcom/samsung/android/sdk/spage/card/RectData;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/spage/card/RectData;->c(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/base/ActionFieldData;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/sdk/spage/card/CardContent;->a(Ljava/lang/String;Lcom/samsung/android/sdk/spage/card/base/FieldData;)V

    const-string p1, "tag_data_16"

    .line 122
    new-instance v0, Lcom/samsung/android/sdk/spage/card/TextData;

    invoke-direct {v0}, Lcom/samsung/android/sdk/spage/card/TextData;-><init>()V

    const-string v1, "mr_share_more"

    .line 123
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/spage/card/TextData;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/TextData;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->u:Landroid/content/Intent;

    .line 124
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/spage/card/TextData;->a(Landroid/content/Intent;)Lcom/samsung/android/sdk/spage/card/base/ActionFieldData;

    move-result-object v0

    .line 122
    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/sdk/spage/card/CardContent;->a(Ljava/lang/String;Lcom/samsung/android/sdk/spage/card/base/FieldData;)V

    .line 126
    :goto_2
    iget p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->a:I

    const v0, 0x37ccd9b0

    if-ne p1, v0, :cond_5

    .line 127
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/spage/card/CardContent;->b(Ljava/lang/String;)V

    :cond_5
    return-object v2
.end method

.method public a(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->a:I

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->u:Landroid/content/Intent;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->b:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->o:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 173
    iput p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->f:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 237
    iput-boolean p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->v:Z

    return-void
.end method

.method public c()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->t:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 189
    iput p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->j:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->d:Ljava/lang/String;

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 209
    iput p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->o:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->e:Ljava/lang/String;

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 229
    iput p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->t:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->g:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->h:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->i:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->k:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->l:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->m:Ljava/lang/String;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->n:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->p:Ljava/lang/String;

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->q:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->r:Ljava/lang/String;

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardContent;->s:Ljava/lang/String;

    return-void
.end method
