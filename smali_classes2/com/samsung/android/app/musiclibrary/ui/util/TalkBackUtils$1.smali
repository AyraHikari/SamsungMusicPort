.class final Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;
.super Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final b:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TimeStringCache;-><init>(ILjava/lang/String;)V

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;->b:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;->b:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 35
    div-int/lit16 v0, p2, 0xe10

    mul-int/lit16 v2, v0, 0xe10

    sub-int v2, p2, v2

    .line 36
    div-int/lit8 v2, v2, 0x3c

    .line 37
    rem-int/lit8 p2, p2, 0x3c

    const/4 v3, 0x1

    const/16 v4, 0x20

    if-lez v0, :cond_0

    .line 40
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;->b:Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    invoke-static {p1, v0, v6}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;->b:Ljava/lang/StringBuilder;

    invoke-static {p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;->b:Ljava/lang/StringBuilder;

    invoke-static {p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;->b:Ljava/lang/StringBuilder;

    invoke-static {p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;->b:Ljava/lang/StringBuilder;

    invoke-static {p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils$1;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
