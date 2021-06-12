.class public Lcom/samsung/android/app/music/metaedit/MediaMetaReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/metaedit/MediaMetaReader$OnCompletedParsingListener;,
        Lcom/samsung/android/app/music/metaedit/MediaMetaReader$ParsingTask;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private c:Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;

.field private d:I

.field private e:Lcom/samsung/android/app/music/metaedit/MediaMetaReader$OnCompletedParsingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "([\\d]+)(/[\\d]+)?"

    .line 36
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->a:Ljava/util/regex/Pattern;

    const-string v0, "([\\d]{4})[\\D]?([\\d]{2})?[\\D]?([\\d]{2})?"

    .line 39
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->d:I

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/metaedit/MediaMetaReader;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->d:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/metaedit/MediaMetaReader;Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;)Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->c:Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/metaedit/MediaMetaReader;)Lcom/samsung/android/app/music/metaedit/MediaMetaReader$OnCompletedParsingListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->e:Lcom/samsung/android/app/music/metaedit/MediaMetaReader$OnCompletedParsingListener;

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;IILjava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 115
    :cond_0
    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;->b(I)[B

    move-result-object v1

    if-eqz v1, :cond_6

    .line 116
    array-length v2, v1

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    const/4 v2, 0x1

    if-ne p3, v2, :cond_3

    const/4 v3, 0x5

    if-eq p2, v3, :cond_2

    .line 121
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->a(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 122
    :cond_2
    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x2

    if-ne p3, p1, :cond_5

    .line 125
    :try_start_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->a(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 126
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->findCharset([B)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    const-string p3, "UTF-16"

    .line 127
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "UTF-16"

    :goto_0
    move-object p4, p1

    goto :goto_1

    :cond_4
    const-string p1, "ISO-8859-1"

    goto :goto_0

    :goto_1
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 134
    :pswitch_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1, p4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 137
    :pswitch_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1, p4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 140
    :pswitch_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1, p4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 145
    :cond_5
    :goto_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1, p4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0

    :cond_6
    :goto_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 185
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x1

    .line 190
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_2

    sub-int p2, v0, p2

    .line 193
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string p2, "^0+(?!$)"

    const-string v0, ""

    .line 195
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaMetaReader"

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "normalized track or disc number : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "SMUSIC-MediaMetaReader"

    .line 199
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private a(I)Z
    .locals 1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 161
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x1

    .line 166
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    .line 167
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 168
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string v0, "MediaMetaReader"

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "normalized year : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "SMUSIC-MediaMetaReader"

    .line 176
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method


# virtual methods
.method a()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->d:I

    return v0
.end method

.method a(Ljava/util/List;Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 4
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

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->c:Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 67
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 69
    iget-object v2, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->c:Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;

    iget v3, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->d:I

    .line 70
    invoke-direct {p0, v2, v1, v3, p2}, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->a(Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method a(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->c:Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 79
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 81
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 84
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->c:Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;

    invoke-interface {v3, v2}, Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;->b(I)[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 85
    array-length v3, v2

    if-lez v3, :cond_1

    .line 86
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->findCharset([B)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaMetaReader"

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "charset : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "UTF-16"

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "UTF-16"

    .line 91
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 92
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_5

    const/4 p1, 0x0

    .line 97
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "MediaMetaReader"

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unified charset : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UTF"

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object p1

    :cond_5
    return-object v1
.end method

.method a(Lcom/samsung/android/app/music/metaedit/MediaMetaReader$OnCompletedParsingListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaReader;->e:Lcom/samsung/android/app/music/metaedit/MediaMetaReader$OnCompletedParsingListener;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .line 59
    new-instance v0, Lcom/samsung/android/app/music/metaedit/MediaMetaReader$ParsingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/metaedit/MediaMetaReader$ParsingTask;-><init>(Lcom/samsung/android/app/music/metaedit/MediaMetaReader;Lcom/samsung/android/app/music/metaedit/MediaMetaReader$1;)V

    const/4 v1, 0x1

    .line 60
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/metaedit/MediaMetaReader$ParsingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
