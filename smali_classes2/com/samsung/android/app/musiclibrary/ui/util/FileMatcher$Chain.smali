.class Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Chain"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;->a:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;

    .line 41
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;->b:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;->a:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Matcher;->matches(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chain : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v0

    :catch_0
    move-exception v0

    .line 53
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getMatched getting exception"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;->b:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;->b:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher$Chain;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method
