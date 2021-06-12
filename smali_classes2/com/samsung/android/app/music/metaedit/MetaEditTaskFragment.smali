.class public Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "MetaEditTaskFragment"

.field private static final b:Ljava/lang/String;

.field private static final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Lcom/samsung/android/app/music/metaedit/MediaMetaReader;

.field private e:Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->b:Ljava/lang/String;

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->c:Landroid/util/SparseArray;

    .line 43
    sget-object v0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->c:Landroid/util/SparseArray;

    const-string v1, "4164"

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    sget-object v0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->c:Landroid/util/SparseArray;

    const-string v1, "4165"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    sget-object v0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->c:Landroid/util/SparseArray;

    const-string v1, "4166"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->c:Landroid/util/SparseArray;

    const-string v1, "4167"

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->c:Landroid/util/SparseArray;

    const-string v1, "4168"

    const/4 v2, 0x6

    .line 48
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    sget-object v0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->c:Landroid/util/SparseArray;

    const-string v1, "4169"

    const/4 v2, 0x7

    .line 50
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->c:Landroid/util/SparseArray;

    const-string v1, "4170"

    const/4 v2, 0x4

    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->c:Landroid/util/SparseArray;

    const-string v1, "4171"

    const/16 v2, 0x8

    .line 54
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 222
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "308"

    .line 225
    instance-of v3, v1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz v3, :cond_0

    .line 226
    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const/4 v1, 0x0

    .line 229
    :goto_0
    sget-object v3, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->c:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 230
    sget-object v3, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 231
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 232
    sget-object v4, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 239
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 241
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public a(Landroid/util/SparseArray;Ljava/lang/String;Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$OnCompletedEditingListener;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$OnCompletedEditingListener;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->d:Lcom/samsung/android/app/music/metaedit/MediaMetaReader;

    const/4 v1, -0x1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->e:Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    const-string v0, "None"

    .line 170
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 171
    invoke-static {}, Lcom/samsung/android/app/music/details/MediaInfoUtils;->a()Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;

    move-result-object p4

    .line 172
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x2

    .line 173
    iget-object v2, p4, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    iget-object v2, p4, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    .line 174
    iget-object v2, p4, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->b:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, ""

    goto :goto_1

    :cond_2
    iget-object v2, p4, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x3

    .line 175
    iget-object v2, p4, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->d:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, ""

    goto :goto_2

    :cond_3
    iget-object v2, p4, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x5

    .line 176
    iget-object v2, p4, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->f:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v2, ""

    goto :goto_3

    :cond_4
    iget-object v2, p4, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x6

    .line 177
    iget-object v2, p4, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->i:Ljava/lang/String;

    if-nez v2, :cond_5

    const-string v2, ""

    goto :goto_4

    :cond_5
    iget-object v2, p4, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x7

    .line 178
    iget-object v2, p4, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->h:Ljava/lang/String;

    if-nez v2, :cond_6

    const-string v2, ""

    goto :goto_5

    :cond_6
    iget-object v2, p4, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x4

    .line 179
    iget-object v2, p4, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->e:Ljava/lang/String;

    if-nez v2, :cond_7

    const-string v2, ""

    goto :goto_6

    :cond_7
    iget-object v2, p4, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->e:Ljava/lang/String;

    .line 180
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 179
    :goto_6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x8

    .line 181
    iget-object v2, p4, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->q:Ljava/lang/String;

    if-nez v2, :cond_8

    const-string p4, ""

    goto :goto_7

    :cond_8
    iget-object p4, p4, Lcom/samsung/android/app/music/details/MediaInfoUtils$MetaData;->q:Ljava/lang/String;

    .line 182
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 181
    :goto_7
    invoke-virtual {v0, v1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8

    .line 185
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->f:Landroid/util/SparseArray;

    if-nez v0, :cond_a

    .line 186
    sget-object v0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->a:Ljava/lang/String;

    const-string v2, "Try to read one more because parsed data is null."

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    sget-object v0, Lcom/samsung/android/app/music/metaedit/MetaEditConstants;->a:Ljava/util/List;

    invoke-virtual {p0, v0, p4}, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->a(Ljava/util/List;Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p4

    iput-object p4, p0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->f:Landroid/util/SparseArray;

    .line 188
    iget-object p4, p0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->f:Landroid/util/SparseArray;

    if-nez p4, :cond_a

    return v1

    .line 192
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->f:Landroid/util/SparseArray;

    .line 196
    :goto_8
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 198
    iget-object p4, p0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->e:Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;

    invoke-virtual {p4, p3}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->a(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$OnCompletedEditingListener;)V

    .line 199
    iget-object p3, p0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->e:Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;

    invoke-static {p2}, Lcom/samsung/android/app/music/util/UiUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->d:Lcom/samsung/android/app/music/metaedit/MediaMetaReader;

    invoke-virtual {p4}, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->a()I

    move-result p4

    invoke-virtual {p3, p2, p4, p1}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->a(Ljava/lang/String;ILandroid/util/SparseArray;)V

    const/4 p1, 0x0

    return p1

    .line 164
    :cond_b
    :goto_9
    sget-object p1, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->b:Ljava/lang/String;

    const-string p2, "Cannot write. parse not called."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->d:Lcom/samsung/android/app/music/metaedit/MediaMetaReader;

    if-nez v0, :cond_0

    .line 139
    sget-object p1, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->b:Ljava/lang/String;

    const-string p2, "Cannot read. parse not called."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->d:Lcom/samsung/android/app/music/metaedit/MediaMetaReader;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->a(Ljava/util/List;Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->f:Landroid/util/SparseArray;

    .line 143
    iget-object p1, p0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->f:Landroid/util/SparseArray;

    return-object p1
.end method

.method public a(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->d:Lcom/samsung/android/app/music/metaedit/MediaMetaReader;

    if-nez v0, :cond_0

    .line 215
    sget-object p1, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->b:Ljava/lang/String;

    const-string v0, "Cannot get encoding. parse not called."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->d:Lcom/samsung/android/app/music/metaedit/MediaMetaReader;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Lcom/samsung/android/app/music/metaedit/MediaMetaReader$OnCompletedParsingListener;)V
    .locals 1

    .line 97
    new-instance v0, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;

    invoke-direct {v0}, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->d:Lcom/samsung/android/app/music/metaedit/MediaMetaReader;

    .line 98
    new-instance v0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->e:Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;

    .line 99
    iget-object p1, p0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->e:Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;

    invoke-virtual {p1, p5}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->a(Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->d:Lcom/samsung/android/app/music/metaedit/MediaMetaReader;

    invoke-virtual {p1, p6}, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->a(Lcom/samsung/android/app/music/metaedit/MediaMetaReader$OnCompletedParsingListener;)V

    .line 101
    iget-object p1, p0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->d:Lcom/samsung/android/app/music/metaedit/MediaMetaReader;

    invoke-static {p2}, Lcom/samsung/android/app/music/util/UiUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/metaedit/MediaMetaReader$OnCompletedParsingListener;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->d:Lcom/samsung/android/app/music/metaedit/MediaMetaReader;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->d:Lcom/samsung/android/app/music/metaedit/MediaMetaReader;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->a(Lcom/samsung/android/app/music/metaedit/MediaMetaReader$OnCompletedParsingListener;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$OnCompletedEditingListener;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->e:Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->e:Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->a(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$OnCompletedEditingListener;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 79
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 84
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/app/music/metaedit/MetaEditTaskFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "full_player_2nd_track_detail_edit"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
