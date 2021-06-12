.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$ServiceToken;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceToken"
.end annotation


# instance fields
.field private final wrappedContext:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    const-string v0, "wrappedContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$ServiceToken;->wrappedContext:Landroid/content/ContextWrapper;

    return-void
.end method


# virtual methods
.method public final getWrappedContext$musicLibrary_release()Landroid/content/ContextWrapper;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$ServiceToken;->wrappedContext:Landroid/content/ContextWrapper;

    return-object v0
.end method
