.class public final Lcom/dawin/util/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dawin/util/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/Object;)Z
    .locals 5

    sget-boolean v0, Lcom/dawin/util/f$a;->a:Z

    const-string v1, "Object can not be null."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, ""

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v2}, Lcom/dawin/util/f;->a(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
