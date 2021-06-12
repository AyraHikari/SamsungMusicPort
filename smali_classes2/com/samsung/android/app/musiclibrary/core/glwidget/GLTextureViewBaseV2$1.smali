.class Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeInstance()Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;
    .locals 1

    .line 86
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;-><init>()V

    return-object v0
.end method
