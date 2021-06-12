.class public final Lcom/samsung/android/app/music/util/TabUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/app/music/util/TabUtils;

.field private static final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 22
    new-instance v0, Lcom/samsung/android/app/music/util/TabUtils;

    invoke-direct {v0}, Lcom/samsung/android/app/music/util/TabUtils;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    const/4 v0, 0x2

    .line 36
    new-array v1, v0, [Ljava/lang/Integer;

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x4

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    .line 36
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/music/util/TabUtils;->b:Ljava/util/ArrayList;

    .line 42
    new-array v1, v0, [Ljava/lang/Integer;

    const v4, 0x10031

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const v4, 0x1000c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/music/util/TabUtils;->c:Ljava/util/ArrayList;

    const/16 v1, 0x8

    .line 44
    new-array v1, v1, [Ljava/lang/Integer;

    const v4, 0x10030

    .line 45
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v3

    const v6, 0x10004

    .line 46
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v5

    const v7, 0x110001

    .line 47
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v0

    const v8, 0x10002

    .line 48
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v1, v10

    const v9, 0x10003

    .line 49
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v1, v2

    const v11, 0x10006

    .line 50
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x5

    aput-object v11, v1, v12

    const v11, 0x10007

    .line 51
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x6

    aput-object v13, v1, v14

    const v13, 0x10008

    .line 52
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x7

    aput-object v13, v1, v15

    .line 44
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/music/util/TabUtils;->d:Ljava/util/ArrayList;

    .line 55
    new-array v1, v14, [Ljava/lang/Integer;

    .line 56
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v1, v3

    .line 57
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v1, v5

    .line 58
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v1, v0

    .line 59
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v10

    .line 60
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v2

    .line 61
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v12

    .line 55
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/music/util/TabUtils;->e:Ljava/util/ArrayList;

    .line 64
    new-array v1, v10, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/util/TabUtils;->f:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()I
    .locals 1

    .line 120
    sget-object v0, Lcom/samsung/android/app/music/util/TabUtils;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6

    .line 310
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "|"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    const/4 v1, 0x0

    .line 312
    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    move-object v3, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 314
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 315
    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move-object v3, v4

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v3, :cond_4

    .line 321
    new-instance p1, Ljava/util/StringTokenizer;

    const-string p3, "|"

    invoke-direct {p1, p2, p3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p2

    :goto_2
    if-ge v2, p2, :cond_3

    .line 324
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p3

    .line 325
    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    add-int/lit8 p4, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return p4

    :cond_4
    return p4
.end method

.method public static final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/TabUtils;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "tab_menu_list"

    .line 103
    sget-object v1, Lcom/samsung/android/app/music/util/TabUtils;->e:Ljava/util/ArrayList;

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const-string v1, "|"

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getPreferences(context).\u2026ring(SEPARATOR)\n        )"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    .line 359
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "|"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "TabUtils"

    .line 362
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addTabString - tabs is empty - tab : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 366
    :cond_0
    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v1, :cond_3

    .line 368
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    if-nez v4, :cond_1

    .line 370
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    aput v7, v2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v4, -0x1

    .line 372
    aget v7, v2, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v2, v4

    .line 374
    :goto_1
    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    const-string p3, "TabUtils"

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTabString - already has tab : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_4
    if-nez p3, :cond_5

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    if-gt v1, p3, :cond_6

    sub-int/2addr v1, v5

    .line 392
    aget v0, v2, v1

    const-string v2, "|"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int v2, v2, v1

    add-int v3, v0, v2

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    add-int/lit8 v0, p3, -0x1

    .line 395
    aget v0, v2, v0

    const-string v1, "|"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int v1, v1, p3

    add-int v3, v0, v1

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(tabs).appl\u2026offset, str) }.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "TabUtils"

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTabString - result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tab:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", tabs:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", position:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final a(Landroid/content/Context;II)V
    .locals 3

    .line 123
    invoke-static {p1}, Lcom/samsung/android/app/music/util/TabUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {p1}, Lcom/samsung/android/app/music/util/TabUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 128
    invoke-direct {p0, v1, v0, p2, p3}, Lcom/samsung/android/app/music/util/TabUtils;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p2

    .line 125
    invoke-direct {p0, v1, v2, p2}, Lcom/samsung/android/app/music/util/TabUtils;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 135
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/util/TabUtils;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 405
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p3, "editor"

    .line 406
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "tab_menu_list"

    .line 135
    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 407
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 8

    .line 148
    invoke-direct {p0, p1, p4}, Lcom/samsung/android/app/music/util/TabUtils;->b(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/util/TabUtils;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 409
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "editor"

    .line 410
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-static {p1}, Lcom/samsung/android/app/music/util/TabUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 153
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    move-object v4, p2

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v7, v5, v6}, Lkotlin/text/StringsKt;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 155
    sget-object v3, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    invoke-static {p1}, Lcom/samsung/android/app/music/util/TabUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, p2, p3}, Lcom/samsung/android/app/music/util/TabUtils;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "tab_menu_list"

    .line 156
    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    sget-object v3, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    invoke-direct {v3, p1, v2, p2, p3}, Lcom/samsung/android/app/music/util/TabUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 159
    sget-object p3, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    invoke-direct {p3, v2, p2, p1}, Lcom/samsung/android/app/music/util/TabUtils;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string p1, "tab_menu_list_order"

    .line 160
    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    const-string p1, "tab_settings_update"

    .line 164
    sget-object p3, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    const-string v3, "tab_settings_update"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p3, v0, p4}, Lcom/samsung/android/app/music/util/TabUtils;->b(II)I

    move-result p3

    .line 162
    invoke-interface {v1, p1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p1, "TabUtils"

    .line 166
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "addTabPreferences - allTabs : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", tab : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tab_menu_list"

    .line 232
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "tab_menu_list_order"

    .line 233
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 238
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/util/TabUtils;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/util/TabUtils;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 241
    :cond_1
    sget-object v1, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/util/TabUtils;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 425
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "editor"

    .line 426
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tab_menu_list"

    .line 242
    sget-object v2, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/music/util/TabUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "tab_menu_list_order"

    .line 243
    sget-object v1, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/util/TabUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 427
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 239
    :cond_2
    :goto_0
    sget-object p1, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/util/TabUtils;->i(Landroid/content/Context;)V

    :goto_1
    const-string p0, "TabUtils"

    const-string p1, "restore UI preference"

    .line 246
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method private final a(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .line 76
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 77
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static final a(I)Z
    .locals 1

    .line 97
    sget-object v0, Lcom/samsung/android/app/music/util/TabUtils;->f:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final a(II)Z
    .locals 0

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static final a(Landroid/content/Context;I)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-static {p0}, Lcom/samsung/android/app/music/util/TabUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 89
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "|"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 91
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "Integer.valueOf(tokenizer.nextToken())"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/util/TabUtils;->b(I)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method private final b(II)I
    .locals 0

    or-int/2addr p1, p2

    return p1
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7

    .line 340
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    const-string p2, "|"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->b(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 341
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string p1, "|"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->b(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 342
    invoke-interface {p2, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p3

    .line 343
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/music/util/TabUtils;

    .line 344
    check-cast p2, Ljava/lang/Iterable;

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 452
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    .line 453
    :cond_0
    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    if-ge v2, p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    .line 344
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    move v2, v5

    goto :goto_0

    .line 456
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 457
    move-object p2, v0

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    sub-int/2addr p2, v4

    :goto_2
    if-ltz p2, :cond_5

    .line 458
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 345
    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 346
    invoke-interface {p1, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p4, p1, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_5
    :goto_3
    return p4
.end method

.method public static final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/TabUtils;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "tab_menu_list_order"

    .line 111
    sget-object v1, Lcom/samsung/android/app/music/util/TabUtils;->d:Ljava/util/ArrayList;

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const-string v1, "|"

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getPreferences(context).\u2026ring(SEPARATOR)\n        )"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 290
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "|"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 294
    sget-object v2, Lcom/samsung/android/app/music/util/TabUtils;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "|"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "listType"

    .line 296
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 291
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "TabUtils"

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeLegacyTabs - result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private final b(I)Z
    .locals 2

    .line 84
    sget-object v0, Lcom/samsung/android/app/music/util/TabUtils;->d:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/music/util/TabUtils;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x1000b

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

.method private final b(Landroid/content/Context;I)Z
    .locals 2

    .line 145
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/util/TabUtils;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "tab_settings_update"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/util/TabUtils;->a(II)Z

    move-result p1

    return p1
.end method

.method private final c(II)I
    .locals 0

    not-int p2, p2

    and-int/2addr p1, p2

    return p1
.end method

.method public static final c(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    sget-object v0, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/TabUtils;->i(Landroid/content/Context;)V

    const-string v0, "key_spotify_last_current_location"

    .line 225
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "key_spotify_oobe_show_tip"

    .line 226
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final d(Landroid/content/Context;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    sget-object v0, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/TabUtils;->g(Landroid/content/Context;)V

    .line 253
    sget-object v0, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/TabUtils;->h(Landroid/content/Context;)V

    .line 255
    invoke-static {p0}, Lcom/samsung/android/app/music/util/TabUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const v1, 0x10030

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/util/TabUtils;->a(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    sget-object v0, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    invoke-direct {v0, p0, v1, v3}, Lcom/samsung/android/app/music/util/TabUtils;->a(Landroid/content/Context;II)V

    goto :goto_0

    .line 261
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    .line 263
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 261
    invoke-direct {v0, p0, v1, v3, v2}, Lcom/samsung/android/app/music/util/TabUtils;->a(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_1
    :goto_0
    const-string p0, "TabUtils"

    const-string v0, "updateTabPreferences"

    .line 268
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final e(Landroid/content/Context;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    invoke-static {p0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->a(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v3, 0x10100

    if-eqz v0, :cond_0

    .line 276
    sget-object v4, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    sget-object v5, Lcom/samsung/android/app/music/util/TabUtils;->d:Ljava/util/ArrayList;

    invoke-direct {v4, v5, v2, v3}, Lcom/samsung/android/app/music/util/TabUtils;->a(Ljava/util/ArrayList;II)V

    .line 277
    sget-object v4, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    sget-object v5, Lcom/samsung/android/app/music/util/TabUtils;->e:Ljava/util/ArrayList;

    invoke-direct {v4, v5, v2, v3}, Lcom/samsung/android/app/music/util/TabUtils;->a(Ljava/util/ArrayList;II)V

    goto :goto_0

    .line 279
    :cond_0
    sget-object v4, Lcom/samsung/android/app/music/util/TabUtils;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v4, Lcom/samsung/android/app/music/util/TabUtils;->c:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/app/music/util/TabUtils;->d(Landroid/content/Context;)V

    if-eqz v0, :cond_1

    .line 285
    sget-object v0, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3, v2, v1}, Lcom/samsung/android/app/music/util/TabUtils;->a(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method private final f(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    .line 69
    sget-object v0, Lcom/samsung/android/app/music/util/TabUtils;->g:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/app/music/util/TabUtils;->g:Landroid/content/SharedPreferences;

    .line 72
    :cond_0
    sget-object p1, Lcom/samsung/android/app/music/util/TabUtils;->g:Landroid/content/SharedPreferences;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    return-object p1
.end method

.method private final g(Landroid/content/Context;)V
    .locals 6

    .line 172
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/util/TabUtils;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "legacy_tab_settings_clear"

    const/4 v2, 0x0

    .line 173
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_5

    .line 175
    sget-object v1, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    const-string v3, "music_current_tab"

    const v4, 0x10004

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/util/TabUtils;->b(I)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 177
    sget-object v1, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    const-string v5, "tab_menu_list"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/samsung/android/app/music/util/TabUtils;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    .line 179
    sget-object v1, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    const-string v5, "tab_menu_list_order"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/samsung/android/app/music/util/TabUtils;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    .line 180
    sget-object v1, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/util/TabUtils;->i(Landroid/content/Context;)V

    .line 413
    :cond_4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "editor"

    .line 414
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legacy_tab_settings_clear"

    .line 181
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 415
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    return-void
.end method

.method private final h(Landroid/content/Context;)V
    .locals 8

    .line 187
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/util/TabUtils;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 417
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "editor"

    .line 418
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    sget-object v2, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    invoke-static {p1}, Lcom/samsung/android/app/music/util/TabUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/util/TabUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tab_menu_list"

    .line 190
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    sget-object v3, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    invoke-static {p1}, Lcom/samsung/android/app/music/util/TabUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/samsung/android/app/music/util/TabUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "tab_menu_list_order"

    .line 192
    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "music_current_tab"

    const v4, 0x10004

    .line 193
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 195
    sget-object v4, Lcom/samsung/android/app/music/util/TabUtils;->c:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "music_current_tab"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    const-string v4, "tab_settings_update"

    const/4 v5, 0x0

    .line 197
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 198
    sget-object v4, Lcom/samsung/android/app/music/util/TabUtils;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 199
    sget-object v6, Lcom/samsung/android/app/music/util/TabUtils;->a:Lcom/samsung/android/app/music/util/TabUtils;

    const-string v7, "flag"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v6, v0, v5}, Lcom/samsung/android/app/music/util/TabUtils;->c(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string v4, "tab_settings_update"

    .line 201
    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "TabUtils"

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeLegacyTabPreferences - enabledTabs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", allTabs : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", currentTab: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final i(Landroid/content/Context;)V
    .locals 1

    .line 211
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/util/TabUtils;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 421
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "editor"

    .line 422
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tab_menu_list"

    .line 212
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "tab_menu_list_order"

    .line 213
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "music_current_tab"

    .line 214
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "tab_settings_update"

    .line 215
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 423
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "TabUtils"

    const-string v0, "clearTabPreferences()"

    .line 217
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
