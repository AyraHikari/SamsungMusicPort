.class public Lcom/dawin/http/b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dawin/http/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/dawin/http/d;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/dawin/http/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dawin/http/b$a;I)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/dawin/http/b;->a:Landroid/content/Context;

    iput p3, p0, Lcom/dawin/http/b;->c:I

    iput-object p2, p0, Lcom/dawin/http/b;->d:Lcom/dawin/http/b$a;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/dawin/http/d;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doin background Start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dawin/http/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/e;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/dawin/http/b;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/dawin/http/b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dawin/http/b;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dawin/http/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dawin/http/b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/dawin/http/b;->a:Landroid/content/Context;

    iget v2, p0, Lcom/dawin/http/b;->c:I

    invoke-static {p1, v0, v1, v2}, Lcom/dawin/http/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Lcom/dawin/http/d;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doin background End "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dawin/http/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/e;->c(Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string p1, "url null or empty!!"

    invoke-static {p1}, Lcom/dawin/util/e;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method protected a(Lcom/dawin/http/d;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostExecute - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dawin/http/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/dawin/http/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    iget v0, p1, Lcom/dawin/http/d;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dawin/http/b;->d:Lcom/dawin/http/b$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dawin/http/b;->d:Lcom/dawin/http/b$a;

    iget v1, p0, Lcom/dawin/http/b;->c:I

    iget-object p1, p1, Lcom/dawin/http/d;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/dawin/http/b$a;->b(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dawin/http/b;->d:Lcom/dawin/http/b$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dawin/http/b;->d:Lcom/dawin/http/b$a;

    iget v1, p0, Lcom/dawin/http/b;->c:I

    iget p1, p1, Lcom/dawin/http/d;->a:I

    invoke-interface {v0, v1, p1}, Lcom/dawin/http/b$a;->a(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/dawin/http/b;->d:Lcom/dawin/http/b$a;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/dawin/http/b;->d:Lcom/dawin/http/b$a;

    iget v0, p0, Lcom/dawin/http/b;->c:I

    const/16 v1, -0x12c

    invoke-interface {p1, v0, v1}, Lcom/dawin/http/b$a;->a(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dawin/http/b;->a([Ljava/lang/String;)Lcom/dawin/http/d;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/dawin/http/d;

    invoke-virtual {p0, p1}, Lcom/dawin/http/b;->a(Lcom/dawin/http/d;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreExecute() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dawin/http/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/e;->c(Ljava/lang/String;)V

    return-void
.end method
