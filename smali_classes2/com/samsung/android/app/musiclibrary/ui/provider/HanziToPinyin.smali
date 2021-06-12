.class public Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;,
        Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "HanziToPinyin"

.field private static final d:Ljava/lang/String;

.field private static e:Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;


# instance fields
.field public a:Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;

.field public b:Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const-string v0, "android.icu.text.Transliterator"

    .line 42
    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "libcore.icu.Transliterator"

    .line 44
    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->d:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "Han-Latin/Names; Latin-Ascii; Any-Upper"

    .line 156
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;->a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->a:Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;

    const-string v0, "Latin-Ascii"

    .line 157
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;->a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->b:Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->c:Ljava/lang/String;

    const-string v1, "Han-Latin/Names transliterator data is missing, HanziToPinyin is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private a(CLcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;)V
    .locals 2

    .line 178
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->b:Ljava/lang/String;

    const/4 v0, 0x1

    const/16 v1, 0x80

    if-ge p1, v1, :cond_0

    .line 182
    iput v0, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->a:I

    .line 183
    iget-object p1, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->b:Ljava/lang/String;

    iput-object p1, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->c:Ljava/lang/String;

    return-void

    :cond_0
    const/16 v1, 0x250

    if-lt p1, v1, :cond_4

    const/16 v1, 0x1e00

    if-gt v1, p1, :cond_1

    const/16 v1, 0x1eff

    if-ge p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 195
    iput p1, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->a:I

    .line 196
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->a:Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;

    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->c:Ljava/lang/String;

    .line 197
    iget-object p1, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->b:Ljava/lang/String;

    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x3

    .line 198
    iput p1, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->a:I

    .line 199
    iget-object p1, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->b:Ljava/lang/String;

    iput-object p1, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->c:Ljava/lang/String;

    :cond_3
    return-void

    .line 189
    :cond_4
    :goto_0
    iput v0, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->a:I

    .line 190
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->b:Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;

    if-nez p1, :cond_5

    iget-object p1, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->b:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->b:Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;

    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->b:Ljava/lang/String;

    .line 191
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p2, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;",
            ">;I)V"
        }
    .end annotation

    .line 262
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;

    invoke-direct {v1, p3, v0, v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 264
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public static b()Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;
    .locals 2

    .line 169
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;

    monitor-enter v0

    .line 170
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->e:Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;

    if-nez v1, :cond_0

    .line 171
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;-><init>()V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->e:Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;

    .line 173
    :cond_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->e:Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 174
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 222
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;

    invoke-direct {v3}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v1, :cond_6

    .line 232
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 233
    invoke-static {v6}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 234
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 235
    invoke-direct {p0, v2, v0, v5}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    goto :goto_2

    .line 238
    :cond_1
    invoke-direct {p0, v6, v3}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->a(CLcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;)V

    .line 239
    iget v6, v3, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->a:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 240
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 241
    invoke-direct {p0, v2, v0, v5}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 243
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;

    invoke-direct {v3}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;-><init>()V

    goto :goto_1

    .line 246
    :cond_3
    iget v6, v3, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->a:I

    if-eq v5, v6, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 247
    invoke-direct {p0, v2, v0, v5}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 249
    :cond_4
    iget-object v5, v3, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :goto_1
    iget v5, v3, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->a:I

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 254
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_7

    .line 255
    invoke-direct {p0, v2, v0, v5}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    :cond_7
    return-object v0

    :cond_8
    :goto_3
    return-object v0
.end method

.method public a()Z
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->a:Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Transliterator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
