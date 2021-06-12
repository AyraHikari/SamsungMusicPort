.class Lcom/dawin/DawinVideoAd$12$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dawin/DawinVideoAd$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dawin/objects/b;

.field final synthetic b:Lcom/dawin/DawinVideoAd$12;


# direct methods
.method constructor <init>(Lcom/dawin/DawinVideoAd$12;Lcom/dawin/objects/b;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/DawinVideoAd$12$2;->b:Lcom/dawin/DawinVideoAd$12;

    iput-object p2, p0, Lcom/dawin/DawinVideoAd$12$2;->a:Lcom/dawin/objects/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$12$2;->a:Lcom/dawin/objects/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dawin/objects/b;->setVisibility(I)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$12$2;->a:Lcom/dawin/objects/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dawin/objects/b;->e:Z

    return-void
.end method
