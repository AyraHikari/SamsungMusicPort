.class public Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "DlnaDmsMediaInfoDialogFragment"


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)Landroid/support/v4/app/DialogFragment;
    .locals 2

    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_list_type"

    .line 39
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "uri"

    .line 40
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance p0, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;-><init>()V

    .line 42
    invoke-virtual {p0, v0}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private a()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_list_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "uri"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 75
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/util/MediaDbUtils;->a(Landroid/content/Context;ILandroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;

    move-result-object v2

    .line 78
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez v2, :cond_0

    const-string v0, "MusicSimpleInfo"

    const-string v1, "There are no information about current song."

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 84
    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)V

    const v4, 0x7f0b0147

    const v5, 0x7f0b014b

    const v6, 0x7f0b03cf

    const v7, 0x7f0b03d4

    packed-switch v1, :pswitch_data_0

    .line 99
    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->f(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v3, v7, v8}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->b:Ljava/lang/String;

    invoke-direct {p0, v3, v6, v7}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->d(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v6}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const v5, 0x1000b

    if-ne v1, v5, :cond_1

    .line 104
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->b(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-direct {p0, v3, v1, v4}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f0b02d7

    .line 106
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->c(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v1, v0}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0b0090

    .line 89
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->h(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v3, v1, v8}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->f(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v3, v1, v7}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f0b0080

    .line 91
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->g(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v3, v1, v7}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->b:Ljava/lang/String;

    invoke-direct {p0, v3, v1, v6}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f0b014e

    .line 93
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->e(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v1, v6}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->d(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v1, v5}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->b(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v1, v0}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v3

    :pswitch_data_0
    .packed-switch 0x10000e
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)V
    .locals 6

    .line 114
    iget-wide v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->h:J

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 115
    iget-wide v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->h:J

    div-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->b:Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->duration()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->h:J

    .line 119
    iget-wide v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->h:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 120
    iget-wide v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->h:J

    div-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->b:Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->b:Ljava/lang/String;

    if-nez p2, :cond_2

    const p2, 0x7f0b0429

    .line 125
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->b:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 191
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const p3, 0x7f0b0429

    .line 192
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    :cond_0
    const-string v1, "detail_type"

    .line 194
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "detail_info"

    .line 195
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;
    .locals 9

    .line 132
    iget-wide v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 133
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 135
    iget-wide v1, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->k:J

    long-to-double v1, v1

    const-wide/high16 v3, 0x4130000000000000L    # 1048576.0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmpl-double v7, v1, v3

    if-ltz v7, :cond_0

    const p2, 0x7f0b038b

    .line 136
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v5

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 137
    :cond_0
    iget-wide v1, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->k:J

    long-to-double v1, v1

    const-wide/high16 v7, 0x4090000000000000L    # 1024.0

    div-double/2addr v1, v7

    cmpl-double v3, v1, v3

    if-ltz v3, :cond_1

    const p2, 0x7f0b038a

    .line 138
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v5

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const v0, 0x7f0b0389

    .line 140
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    iget-wide v1, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->k:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v5

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const p2, 0x7f0b0429

    .line 143
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 148
    iget-object p1, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->m:Ljava/lang/String;

    return-object p1

    :cond_0
    const p2, 0x7f0b0429

    .line 150
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 155
    iget-object p1, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->i:Ljava/lang/String;

    return-object p1

    :cond_0
    const p2, 0x7f0b0429

    .line 157
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 162
    iget-object p1, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->p:Ljava/lang/String;

    return-object p1

    :cond_0
    const p2, 0x7f0b0429

    .line 164
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private f(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 169
    iget-object p1, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->c:Ljava/lang/String;

    return-object p1

    :cond_0
    const p2, 0x7f0b0429

    .line 171
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private g(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 176
    iget-object p1, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->d:Ljava/lang/String;

    return-object p1

    :cond_0
    const p2, 0x7f0b0429

    .line 178
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private h(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;)Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 183
    iget-object p1, p2, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->e:Ljava/lang/String;

    return-object p1

    :cond_0
    const p2, 0x7f0b0429

    .line 185
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "duration"

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 57
    new-instance p1, Landroid/widget/SimpleAdapter;

    invoke-direct {p0}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->a()Ljava/util/ArrayList;

    move-result-object v2

    const-string v0, "detail_type"

    const-string v3, "detail_info"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    const v3, 0x7f0400df

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 61
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b019f

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0b02d3

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1

    :array_0
    .array-data 4
        0x7f13030f
        0x7f130310
    .end array-data
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "duration"

    .line 67
    iget-object v1, p0, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
