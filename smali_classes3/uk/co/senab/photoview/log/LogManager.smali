.class public final Luk/co/senab/photoview/log/LogManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Luk/co/senab/photoview/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Luk/co/senab/photoview/log/LoggerDefault;

    invoke-direct {v0}, Luk/co/senab/photoview/log/LoggerDefault;-><init>()V

    sput-object v0, Luk/co/senab/photoview/log/LogManager;->a:Luk/co/senab/photoview/log/Logger;

    return-void
.end method

.method public static a()Luk/co/senab/photoview/log/Logger;
    .locals 1

    .line 32
    sget-object v0, Luk/co/senab/photoview/log/LogManager;->a:Luk/co/senab/photoview/log/Logger;

    return-object v0
.end method
