.class public Lcom/samsung/android/app/music/details/PlayerDetailsFragment;
.super Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/activity/MediaInfoActivity$MetaUiUpdatable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;-><init>()V

    return-void
.end method

.method private b(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;)V
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->b(Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;)V

    return-void
.end method

.method protected b()I
    .locals 1

    const v0, 0x7f0401c8

    return v0
.end method

.method protected b(Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;)V
    .locals 11

    if-eqz p1, :cond_5

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->b:Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    if-ne v0, p1, :cond_0

    goto/16 :goto_2

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->a()V

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 104
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 105
    iput-object p1, p0, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->b:Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    const v2, 0x7f1304aa

    .line 108
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f100086

    .line 109
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->b:Landroid/net/Uri;

    iget-object v5, p0, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->b:Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    iget-wide v5, v5, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->o:J

    .line 110
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v3

    sget v4, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->c:I

    .line 111
    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/widget/ImageView;I)V

    const v2, 0x7f130070

    .line 114
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 115
    iget-object v4, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->b:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 116
    invoke-direct {p0, v2, v3, v4, v4}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->b(IILjava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f13019a

    .line 119
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 120
    iget-object v6, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->c:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v5, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->c:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 122
    iget-wide v6, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->p:J

    .line 123
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const v7, 0x100003

    .line 122
    invoke-direct {p0, v2, v7, v6, v5}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->b(IILjava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v2, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0b0080

    const v6, 0x7f130364

    .line 127
    invoke-virtual {p0, v6, v5, v2}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->a(IILjava/lang/String;)V

    const v5, 0x100002

    .line 128
    iget-wide v8, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->o:J

    .line 129
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 128
    invoke-direct {p0, v6, v5, v8, v2}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->b(IILjava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v2, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->e:Ljava/lang/String;

    const v5, 0x7f130366

    if-eqz v2, :cond_3

    const-string v2, "<unknown>"

    iget-object v6, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->e:Ljava/lang/String;

    .line 133
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->e:Ljava/lang/String;

    iget-object v6, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->c:Ljava/lang/String;

    .line 134
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x7f0b0081

    .line 138
    iget-object v2, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->e:Ljava/lang/String;

    invoke-virtual {p0, v5, v0, v2}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->a(IILjava/lang/String;)V

    .line 139
    iget-wide v8, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->p:J

    .line 140
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->e:Ljava/lang/String;

    .line 139
    invoke-direct {p0, v5, v7, v0, v2}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->b(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 135
    :cond_3
    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    .line 136
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :goto_1
    iget-object v0, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->f:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0b014e

    const v5, 0x7f130368

    .line 144
    invoke-virtual {p0, v5, v2, v0}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->a(IILjava/lang/String;)V

    const v2, 0x100006

    .line 145
    iget-object v6, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->f:Ljava/lang/String;

    invoke-direct {p0, v5, v2, v6, v0}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->b(IILjava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-wide v5, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->g:J

    invoke-static {v1, v5, v6}, Lcom/samsung/android/app/music/details/MediaInfoUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-wide v5, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->g:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-lez v2, :cond_4

    iget-wide v5, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->g:J

    const-wide/16 v7, 0x3e8

    div-long v7, v5, v7

    :cond_4
    const v2, 0x7f0b03d7

    long-to-int v5, v7

    .line 152
    invoke-static {v1, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f1304a3

    .line 151
    invoke-virtual {p0, v6, v2, v0, v5}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0, v6, v3, v4, v4}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->b(IILjava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0b0312

    .line 157
    iget-object v2, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->i:Ljava/lang/String;

    const v5, 0x7f1304a4

    invoke-virtual {p0, v5, v0, v2}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->a(IILjava/lang/String;)V

    .line 158
    invoke-direct {p0, v5, v3, v4, v4}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->b(IILjava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0b03d8

    .line 162
    iget-object v2, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->h:Ljava/lang/String;

    const v5, 0x7f130074

    invoke-virtual {p0, v5, v0, v2}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->a(IILjava/lang/String;)V

    .line 163
    invoke-direct {p0, v5, v3, v4, v4}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->b(IILjava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0b014b

    .line 166
    iget-object v2, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->j:Ljava/lang/String;

    const v5, 0x7f1304a5

    invoke-virtual {p0, v5, v0, v2}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->a(IILjava/lang/String;)V

    .line 167
    invoke-direct {p0, v5, v3, v4, v4}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->b(IILjava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0b00a9

    .line 169
    iget v2, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->k:I

    .line 170
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f1304a6

    .line 169
    invoke-virtual {p0, v5, v0, v2}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->a(IILjava/lang/String;)V

    .line 171
    invoke-direct {p0, v5, v3, v4, v4}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->b(IILjava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0b0334

    .line 173
    iget v2, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->l:I

    .line 174
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f1304a7

    .line 173
    invoke-virtual {p0, v5, v0, v2}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->a(IILjava/lang/String;)V

    .line 175
    invoke-direct {p0, v5, v3, v4, v4}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->b(IILjava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-wide v5, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->m:J

    invoke-static {v1, v5, v6}, Lcom/samsung/android/app/music/details/MediaInfoUtils;->b(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f1304a8

    const v5, 0x7f0b0388

    const/4 v6, 0x0

    .line 179
    aget-object v6, v0, v6

    const/4 v7, 0x1

    aget-object v0, v0, v7

    invoke-virtual {p0, v2, v5, v6, v0}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->a(IILjava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f1304a8

    .line 180
    invoke-direct {p0, v0, v3, v4, v4}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->b(IILjava/lang/String;Ljava/lang/String;)V

    const v6, 0x7f1304a9

    const v7, 0x7f0b02d7

    .line 182
    iget-object p1, p1, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->n:Ljava/lang/String;

    .line 183
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/util/UiUtils;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    .line 182
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->a(IILjava/lang/String;Ljava/lang/String;Z)V

    const p1, 0x7f1304a9

    .line 184
    invoke-direct {p0, p1, v3, v4, v4}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->b(IILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public c()Z
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/details/MediaInfoUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->b:Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/details/MediaInfoUtils;->a(Landroid/app/Activity;Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->onAttach(Landroid/app/Activity;)V

    .line 61
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->a:Landroid/content/Context;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f14002a

    .line 217
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 218
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x54

    if-eq p1, v0, :cond_0

    .line 263
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->c()Z

    const/4 p1, 0x0

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 234
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 253
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 236
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->c()Z

    .line 237
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "307"

    const-string v2, "4142"

    .line 238
    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 242
    :pswitch_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    iget-object v0, p0, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->b:Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    iget-wide v2, v0, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->a:J

    .line 243
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 244
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 246
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "307"

    const-string v2, "4141"

    .line 247
    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x7f1305e7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f1305e8

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 226
    :cond_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->a:Landroid/content/Context;

    .line 227
    invoke-static {v1}, Lcom/samsung/android/app/music/details/MediaInfoUtils;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 229
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 80
    invoke-super {p0}, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->onResume()V

    .line 81
    invoke-static {}, Lcom/samsung/android/app/music/details/MediaInfoUtils;->a()Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->b(Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 66
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f1301a6

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedScrollView;

    const p2, 0x7f0f003a

    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v0, 0xf

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedScrollView;->a(ILjava/lang/Integer;)V

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/details/PlayerDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 73
    invoke-virtual {p1, p2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method
