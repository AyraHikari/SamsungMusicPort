.class Lcom/dawin/objects/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dawin/objects/b;->b(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dawin/objects/b;


# direct methods
.method constructor <init>(Lcom/dawin/objects/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/objects/b$1;->b:Lcom/dawin/objects/b;

    iput-object p2, p0, Lcom/dawin/objects/b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/dawin/objects/b$1;->b:Lcom/dawin/objects/b;

    invoke-static {v0}, Lcom/dawin/objects/b;->b(Lcom/dawin/objects/b;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/dawin/objects/b$1;->b:Lcom/dawin/objects/b;

    invoke-static {v1}, Lcom/dawin/objects/b;->a(Lcom/dawin/objects/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dawin/objects/b$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
