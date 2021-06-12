.class Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$1;->a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$1;->a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->a(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;)Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->a(I)V

    return-void
.end method
