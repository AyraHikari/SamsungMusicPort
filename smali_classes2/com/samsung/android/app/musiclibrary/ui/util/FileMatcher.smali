.class public Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;,
        Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "FileMatcher"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->b:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;

    return-void
.end method

.method public static varargs a([Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;)Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;
    .locals 5

    .line 14
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    .line 15
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;

    invoke-direct {v4, v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;-><init>(Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;)V

    add-int/lit8 v2, v2, 0x1

    move-object v1, v4

    goto :goto_0

    .line 17
    :cond_0
    new-instance p0, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;-><init>(Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;)V

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 7
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->b:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 26
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result song path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", matched file : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method
